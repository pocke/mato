# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdto/version'

Gem::Specification.new do |spec|
  spec.name          = "mdto"
  spec.version       = Mdto::VERSION
  spec.authors       = ["FUJI Goro"]
  spec.email         = ["goro-fuj@bitjoureny.com"]

  spec.summary       = %q{Markdown Processing Toolkit}
  spec.description   = %q{An extensible markdown processing toolkit based on CommonMark}
  spec.homepage      = "https://github.com/bitjourney/mdto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "commonmarker"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
