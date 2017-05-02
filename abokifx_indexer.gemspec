# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'abokifx_indexer/version'

Gem::Specification.new do |spec|
  spec.name          = "abokifx_indexer-ruby"
  spec.version       = AbokiFXIndexer::VERSION
  spec.authors       = ["Ace Subido"]
  spec.email         = ["ace.subido@gmail.com"]

  spec.summary       = %q{Ruby Wrapper to get latest rates from abokifx.com}
  spec.description   = %q{Ruby Wrapper to get latest rates from abokifx.com}
  spec.homepage      = "http://github.com/imachiatto/abokifx_indexer-ruby"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "~> 4.2"
  spec.add_dependency "virtus", ">= 1.0"
  spec.add_dependency "gem_config", "0.3.1"
  spec.add_dependency "nokogiri", "1.6"
  spec.add_dependency "typhoeus", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "timecop", "0.8.1"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "virtus-matchers"
  spec.add_development_dependency "webmock", "~> 2.3"

end
