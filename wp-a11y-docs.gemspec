# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "wp-a11y-docs"
  spec.version       = "0.0.1"
  spec.authors       = ["Rian Rietveld", "Patrick Marsceill", "Matthew Wang"]
  spec.email         = ["mail@rianrietveld.nl", "patrick.marsceill@gmail.com", "matt@matthewwang.me"]
  spec.name          = "wp-a11y-docs"
  spec.version       = "0.0.1"

  spec.summary       = %q{An accessible theme for documentation, based on Just The Docs.}
  spec.homepage      = "https://github.com/wpaccessibility/wp-a11y-docs"
  spec.license       = "MIT"
  spec.metadata      = {
    "bug_tracker_uri"   => "https://github.com/wpaccessibility/wp-a11y-docs/issues",
    "changelog_uri"     => "https://github.com/wpaccessibility/wp-a11y-docs/blob/main/CHANGELOG.md",
    "documentation_uri" => "https://wpaccessibility.org/",
    "source_code_uri"   => "https://github.com/wpaccessibility/wp-a11y-docs",
  }

  spec.files         = `git ls-files -z ':!:*.jpg' ':!:*.png'`.split("\x0").select { |f| f.match(%r{^(assets|bin|_layouts|_includes|lib|Rakefile|_sass|LICENSE|README|CHANGELOG|favicon)}i) }
  spec.executables   << 'wp-a11y-docs'

  spec.add_development_dependency "bundler", ">= 2.3.5"
  spec.add_runtime_dependency "jekyll", ">= 3.8.5"
  spec.add_runtime_dependency "jekyll-seo-tag", ">= 2.0"
  spec.add_runtime_dependency "jekyll-include-cache"
  spec.add_runtime_dependency "rake", ">= 12.3.1"
end
