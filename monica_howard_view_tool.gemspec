
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "monica_howard_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "monica_howard_view_tool"
  spec.version       = MonicaHowardViewTool::VERSION
  spec.authors       = ["Monica Howard"]
  spec.email         = ["jay.m.howard@gmail.com"]

  spec.summary       = %q{View specific methods for my applications}
  spec.description   = %q{Provides generated HTML data for Rails apps}
  spec.homepage      = "https://monicahoward.net"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
