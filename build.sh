#!/bin/bash
gem uninstall furltility-activeresource
gem build furltility-activeresource.gemspec
gem install ./furltility-activeresource-0.0.3.gem
