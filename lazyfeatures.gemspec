# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{lazyfeatures}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Clayton Lengel-Zigich"]
  s.cert_chain = ["/Users/clayton/.certs/gem-public_cert.pem"]
  s.date = %q{2010-01-09}
  s.description = %q{Lazily create Cucumber features for your Rails app}
  s.email = %q{clayton@claytonlz.com}
  s.extra_rdoc_files = ["lib/lazyfeatures.rb", "lib/lazyfeatures/base.rb", "lib/lazyfeatures/parser.rb"]
  s.files = ["Rakefile", "lib/lazyfeatures.rb", "lib/lazyfeatures/base.rb", "lib/lazyfeatures/parser.rb", "Manifest", "lazyfeatures.gemspec"]
  s.homepage = %q{http://github.com/claytonlz/lazyfeatures}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Lazyfeatures"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{lazyfeatures}
  s.rubygems_version = %q{1.3.5}
  s.signing_key = %q{/Users/clayton/.certs/gem-private_key.pem}
  s.summary = %q{Lazily create Cucumber features for your Rails app}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
