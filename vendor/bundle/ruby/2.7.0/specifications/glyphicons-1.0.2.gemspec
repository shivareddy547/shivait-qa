# -*- encoding: utf-8 -*-
# stub: glyphicons 1.0.2 ruby lib

Gem::Specification.new do |s|
  s.name = "glyphicons".freeze
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marko Tunjic".freeze]
  s.bindir = "exe".freeze
  s.date = "2017-01-26"
  s.description = "\"GLYPHICONS Halflings for Bootstrap and Ruby on Rails\"".freeze
  s.email = ["marko.tunjic@live.com".freeze]
  s.homepage = "https://github.com/mtunjic/glyphicons".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Glyphicons for Bootstrap 3 and 4.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.13"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
