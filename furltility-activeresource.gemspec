# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name = "furltility-activeresource"
  gem.version = "0.0.2"
  gem.date = "2017-03-23"
  gem.summary = "Friendly URLs"
  gem.description = "A simple yet very effective library to get awesome-looking URLs in Ruby on Rails with ActiveResource, without a database table to handle it."
  gem.authors = ["Björn Lennartsson"]
  gem.email = "bjorn@ratherunique.se"
  gem.homepage = "http://www.ratherunique.se"

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  gem.require_paths = ["lib"]

  gem.add_dependency "railties", ">= 3.0.0"
  gem.add_dependency "activeresource", ">= 3.0.0"
  gem.add_dependency "babosa", ">= 0.3.6"

  gem.add_development_dependency 'factory_girl_rails'
  gem.add_development_dependency 'nokogiri', '1.6.8.1'
  gem.add_development_dependency "bundler", "~> 1.13"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
end
