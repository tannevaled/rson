Gem::Specification.new do |gem|
  gem.name    = File.basename(__FILE__, '.*')
  gem.version = '0.0.1'
  gem.authors = 'David DELAVENNAT'
  gem.email   = ''
  gem.summary = 'Ruby Simple Object\'s Notation'
  gem.description = 'JSON like serialization with simple Ruby objects support'
  gem.homepage = 'https://github.com/tannevaled/rson'
  gem.platform = Gem::Platform::RUBY
  gem.has_rdoc = true
  gem.add_runtime_dependency 'parser',        '~>2.3'
  gem.add_runtime_dependency 'awesome_print', '~>1.6'
  gem.add_runtime_dependency 'classy_hash',   '~>0.1'
  gem.add_development_dependency 'test-unit', '~>3.1'
  gem.files = Dir['lib/**/*']
  gem.require_paths = [ 'lib' ]
end
