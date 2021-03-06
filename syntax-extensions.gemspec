# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'syntax/extensions/version'

Gem::Specification.new do |spec|
  spec.name          = "syntax-extensions"
  spec.version       = Syntax::Extensions::VERSION
  spec.authors       = ["Vidar Hokstad"]
  spec.email         = ["vidar@hokstad.com"]
  spec.summary       = %q{Extension for the Ruby Syntax gem for syntax highlighting. }
  spec.description   = %q{Adds .dot (Graphviz), Gherkin and x86 asm. I consider this 'legacy' code that I won't add much more to, but will accept patches}
  spec.homepage      = "https://github.com/vidarh/syntax-extensions"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "syntax"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
