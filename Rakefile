#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rspec/core'
require 'rspec/core/rake_task'

task default: :spec

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/advanded_hash_keys_spec.rb'
end
