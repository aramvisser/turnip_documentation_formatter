# frozen_string_literal: true

require_relative "lib/turnip_documentation_formatter/version"

Gem::Specification.new do |spec|
  spec.name          = "turnip_documentation_formatter"
  spec.version       = Turnip::DocumentationFormatter::VERSION
  spec.authors       = ["Aram Visser"]
  spec.email         = ["hello@aramvisser.com"]

  spec.summary       = "RSpec documentation formatter for Turnip"
  spec.description   = "Show each turnip step on it's own line when using the documentation formatter (`rspec -fd`)"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["source_code_uri"] = "https://github.com/aramvisser/turnip_documentation_formatter"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "turnip", "~> 4.4"
  spec.add_runtime_dependency "rspec", "~> 3.10"
end
