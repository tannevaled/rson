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
desc 'List available tasks'
task :default do
  puts `rake -T -a`
end
