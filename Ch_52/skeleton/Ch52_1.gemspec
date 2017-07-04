# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "Ch47_1"
  spec.version       = '1.0'
  spec.authors       = ["Edwin Wells"]
  spec.email         = ["edwin.wallace@yandex.com"]
  spec.summary       = %q{Test using project skeleton}
  spec.description   = %q{Thus far, simply taking the NAME variable in all templates, and replacing it with 'Ch47_1'.}
  spec.homepage      = "http://domainforproject.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/Ch47_1.rb']
  spec.executables   = ['bin/Ch47_1']
  spec.test_files    = ['tests/test_Ch47_1.rb']
  spec.require_paths = ["lib"]
end