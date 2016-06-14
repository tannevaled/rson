require 'awesome_print'

Rake::TaskManager.record_task_metadata = true

namespace 'unit' do

  desc 'Unit tests'
  task :tests do
    gem 'test-unit'
    require 'test/unit/ui/console/testrunner'
    require_relative 'tests/rson'
    ::Test::Unit::UI::Console::TestRunner.run(
      ::Tests::RSON,
      output_level: ::Test::Unit::UI::Console::TestRunner::VERBOSE,
      show_detail_immediately: false
    )
  end

end
namespace 'gem' do

  desc 'Gem build'
  task :build do
    require 'awesome_print'
    require 'rubygems/commands/build_command'
    build = Gem::Commands::BuildCommand.new
    gemspec = [ File.basename(File.expand_path(__dir__)), 'gemspec' ].join('.')
    build.options.store :args, [ gemspec ]
    ap build.execute
  end

  desc 'Gem install'
  task :install do

  end

end

namespace 'task' do
  desc 'List available task'
  task :list do
    app = Rake.application
    app.tasks.each do |task|
      ap task:task,
         scope:task.scope,
         desc:task.full_comment
      puts "%-20s  # %s" % [task.name, task.full_comment]
    end
  end
end
desc 'List available tasks'
task :default do
  #puts `rake -T -a`
  Rake.application['task:list'].invoke
end
