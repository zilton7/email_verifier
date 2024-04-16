lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'email_verifier/version'

Gem::Specification.new do |gem|
  gem.name          = 'email_verifier'
  gem.version       = EmailVerifier::VERSION
  gem.authors       = ['Kamil Ciemniewski']
  gem.email         = ['kamil@endpoint.com']
  gem.description   = 'Helper utility checking if given email address exists or not'
  gem.summary       = 'Helper utility checking if given email address exists or not'
  gem.homepage      = 'http://endpoint.com'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
  gem.add_runtime_dependency('dnsruby', ['>= 1.5'])
  gem.add_runtime_dependency('net-smtp', ['>= 0.5'])
  gem.license = 'MIT'

  gem.add_development_dependency 'codecov', '~> 0.1'
  gem.add_development_dependency 'rspec', '~> 3.6'
  gem.add_development_dependency 'pry'
end
