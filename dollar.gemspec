lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dollar/version"

Gem::Specification.new do |spec|
  spec.name          = "dollar-command"
  spec.version       = Dollar::VERSION
  spec.authors       = ["Jack Hedaya"]
  spec.email         = ["jackehedaya@gmail.com"]

  spec.summary       = %q{A simple command to never hear "command not found: $" again!}
  spec.homepage      = "https://github.com/jackHedaya/dollar-command"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ['$']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
