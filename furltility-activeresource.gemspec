# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "furltility-activeresource"

Gem::Specification.new do |gem|
  gem.name = "furltility-activeresource"
  gem.version = "0.0.1"
  gem.date = "2016-06-28"
  gem.summary = "Friendly URLs"
  gem.description = "A simple yet very effective library to get awesome-looking URLs in Ruby on Rails with ActiveResource, without a database table to handle it."
  gem.authors = ["Björn Lennartsson"]
  gem.email = "bjorn@ratherunique.se"
  gem.files = ["lib/furltility-activeresource.rb"]
  gem.homepage = "http://www.ratherunique.se"

  gem.add_dependency "railties", ">= 3.0.0"
  gem.add_dependency "activeresource", ">= 3.0.0"
  gem.add_dependency "babosa", ">= 0.3.6"
end
