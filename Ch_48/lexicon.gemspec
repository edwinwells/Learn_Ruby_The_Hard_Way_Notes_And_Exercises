# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "lexicon"
  spec.version       = '1.0'
  spec.authors       = ["Edwin Wells"]
  spec.email         = ["edwin.wallace@yandex.com"]
  spec.summary       = %q{Sample code- Advanced User Input.}
  spec.description   = %q{Create lexicon to classify user input.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/lexicon.rb']
  spec.executables   = ['bin/lexicon']
  spec.test_files    = ['tests/test_lexicon.rb']
  spec.require_paths = ["lib"]
end