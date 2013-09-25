# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require "kiqstand/version"

Gem::Specification.new do |s|
  s.name        = "kiqstand"
  s.version     = Kiqstand::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Durran Jordan"]
  s.email       = ["durran@gmail.com"]
  s.homepage    = "http://mongoid.org"
  s.summary     = "Mongoid Middleware for Sidekiq"
  s.description = s.summary

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "kiqstand"

  s.add_dependency("mongoid", ["~> 4.0"])
  s.add_dependency("moped", ["~> 2.0.beta"])

  s.files = Dir.glob("lib/**/*") + %w(CHANGELOG.md LICENSE README.md Rakefile)
  s.require_path = 'lib'
end
