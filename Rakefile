require "bundler"
Bundler.setup

require "rake"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "kiqstand/version"

task :gem => :build
task :build do
  system "gem build kiqstand.gemspec"
end

task :install => :build do
  system "sudo gem install kiqstand-#{Kiqstand::VERSION}.gem"
end

task :release => :build do
  system "git tag -a v#{Kiqstand::VERSION} -m 'Tagging #{Kiqstand::VERSION}'"
  system "git push --tags"
  system "gem push kiqstand-#{Kiqstand::VERSION}.gem"
  system "rm kiqstand-#{Kiqstand::VERSION}.gem"
end

RSpec::Core::RakeTask.new("spec") do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

RSpec::Core::RakeTask.new('spec:progress') do |spec|
  spec.rspec_opts = %w(--format progress)
  spec.pattern = "spec/**/*_spec.rb"
end

task :default => :spec
