require File.expand_path('../lib/ladon/_version', __FILE__)
require 'date'

Gem::Specification.new do |gem|
  gem.name        = 'ladon'
  gem.version     = Ladon::Version::STRING
  gem.date        = Date.today.to_s
  gem.summary     = 'Ladon'
  gem.description = <<-EOF
    Ladon allows you to create software models and to create automation scripts that work through those models.
  EOF
  gem.authors     = ['Shayne Snow']
  gem.email       = 'ssnow@athenahealth.com'

  # add the runners/ directory to the load path and packaged files
  gem.require_paths = %w[lib runners]
  gem.files       = Dir['lib/**/*.rb', 'runners/**/*.rb']

  gem.homepage    = 'http://rubygems.org/gems/ladon'
  gem.license     = 'Apache-2.0'

  gem.executables << 'ladon-run'
  gem.executables << 'ladon-batch'
  gem.executables << 'ladon-flags'

  gem.required_ruby_version = '>= 2.1.0' # due to use of required keyword args

  gem.add_runtime_dependency 'nokogiri', '~> 1.7' # for junit generation
  gem.add_runtime_dependency 'pry', '~> 0.11' # for interactive mode support in ladon-run
  gem.add_runtime_dependency 'pry-byebug', '~> 3.5' # for interactive mode support in ladon-run
  gem.add_runtime_dependency 'pry-stack_explorer', '0.4.9.2' # for interactive mode support in ladon-run

  gem.add_development_dependency 'rake', '~> 11.3'
  gem.add_development_dependency 'rspec', '~> 3.6' # for specs
  gem.add_development_dependency 'rubocop', '~> 0.49' # for linting
  gem.add_development_dependency 'rubygems-tasks', '~> 0.2'
  gem.add_development_dependency 'simplecov', '~> 0.15'
end
