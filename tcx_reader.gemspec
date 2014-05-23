# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tcx_reader/version'

Gem::Specification.new do |spec|
  spec.name          = "tcx_reader"
  spec.version       = TcxReader::VERSION
  spec.authors       = ["Nicolas Aguttes"]
  spec.email         = ["nicolas.aguttes@gmail.com"]
  spec.name          = "tcx_reader"
  spec.version       = TcxReader::VERSION
  spec.authors       = ["Nicolas Aguttes"]
  spec.email         = ["nicolas.aguttes@gmail.com"]
  spec.description   = %q{Gem to parse a tcx file or string}
  spec.summary       = %q{tcx (garmin) reader}
  spec.homepage      = "https://github.com/tranquiliste/tcx_reader"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency "nokogiri", "1.6.1"
end
