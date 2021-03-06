# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'apollo-studio-tracing/version'

Gem::Specification.new do |spec|
  spec.name          = 'apollo-studio-tracing'
  spec.version       = ApolloStudioTracing::VERSION
  spec.authors       = ['Luke Saniwck']
  spec.email         = ['luke@enjoy.com']

  spec.summary       = 'A Ruby implementation of Apollo GraphQL Studio tracing'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/EnjoyTech/apollo-studio-tracing-ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.2.0' # bc of `.to_sym`

  spec.metadata    = {
    'homepage_uri' => 'https://github.com/EnjoyTech/apollo-studio-tracing-ruby',
    'changelog_uri' => 'https://github.com/EnjoyTech/apollo-studio-tracing-ruby/releases',
    'source_code_uri' => 'https://github.com/EnjoyTech/apollo-studio-tracing-ruby',
    'bug_tracker_uri' => 'https://github.com/EnjoyTech/apollo-studio-tracing-ruby/issues',
  }

  spec.files = `git ls-files bin lib *.md LICENSE`.split("\n")

  spec.add_dependency 'graphql', '>= 1.9.8'

  spec.add_runtime_dependency 'concurrent-ruby'
  spec.add_runtime_dependency 'google-protobuf', '~> 3.7'

  spec.add_development_dependency 'actionpack'
  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'debase'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rack'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec_junit_formatter'
  spec.add_development_dependency 'rubocop', '~> 0.72.0'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'ruby-debug-ide'
end
