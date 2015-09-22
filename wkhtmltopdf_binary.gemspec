# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "wkhtmltopdf_binary"
  spec.version       = '0.12.3-dev'
  spec.authors       = ["Dirk Nilius"]
  spec.email         = ["dirk.nilius@ckc.de"]

  spec.summary       = "WKHTMLTOPDF binary"
  spec.description   = "Provides the WKHTMLTOPDF binary to be used by other gems"
  spec.homepage      = "https://github.com/dirknilius/wkhtmltopdf_binary"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ["wkhtmltopdf"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
