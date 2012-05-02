# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require "furltility"

Gem::Specification.new do |gem|
  gem.name = "furltility"
  gem.version = "0.0.1"
  gem.date = "2012-05-02"
  gem.summary = "Friendly URLs"
  gem.description = "A simple yet very effective library to get awesome-looking URLs in Ruby on Rails, without a database table to handle it."
  gem.authors = ["Björn Lennartsson"]
  gem.email = "mail@palooza.se"
  gem.files = ["lib/furltility.rb"]
  gem.homepage = "http://www.palooza.se/projects/furltility"

  gem.add_dependency "railties", ">= 3.0.0"
  gem.add_dependency "activerecord", ">= 3.0.0"
  gem.add_dependency "babosa", "0.3.7"
end
