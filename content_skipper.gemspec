# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'content_skipper/version'

Gem::Specification.new do |s|
  s.name        = "content_skipper"
  s.version     = ContentSkipper::VERSION
  s.date        = Time.now.strftime('%Y-%m-%d')

  s.summary     = ""
  s.description = ""

  s.author      = "Garret Alfert"
  s.email       = "garret.alfert@gmail.com"
  s.homepage    = "http://rubygems.org/gems/content_skipper"

  s.platform    = Gem::Platform::RUBY
  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "bundler", ">= 1.0.0.rc.5"

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
  s.has_rdoc     = false
end