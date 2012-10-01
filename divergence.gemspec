# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'divergence/version'

Gem::Specification.new do |gem|
  gem.name          = "divergence"
  gem.version       = Divergence::VERSION
  gem.authors       = ["Ryan LeFevre"]
  gem.email         = ["meltingice8917@gmail.com"]
  gem.description   = "Divergence is a Rack application that acts as a HTTP proxy between your web server and your web application. It uses virtual hosts to switch live codebases on the fly by mapping subdomains to git branches. Divergence is primarily for application testing purposes."
  gem.summary       = "Map virtual host subdomains to git branches for testing"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"
end