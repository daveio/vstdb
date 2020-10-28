# frozen_string_literal: true

require_relative "lib/vstdb/version"

Gem::Specification.new do |spec|
  spec.name          = "vstdb"
  spec.version       = Vstdb::VERSION
  spec.authors       = ["Dave Williams"]
  spec.email         = ["dave@dave.io"]

  spec.summary       = "Manage and query information about audio plugins"
  spec.description   = "Manage and query information about audio plugins. Supports VST, VST3, AudioUnit, AAX, and DPM."
  spec.homepage      = "https://github.com/daveio/vstdb"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["allowed_push_host"] = "https://nopush"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/daveio/vstdb"
  spec.metadata["changelog_uri"] = "https://github.com/daveio/vstdb/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
