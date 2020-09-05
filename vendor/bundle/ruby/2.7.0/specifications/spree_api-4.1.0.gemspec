# -*- encoding: utf-8 -*-
# stub: spree_api 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_api".freeze
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ryan Bigg".freeze]
  s.date = "2020-03-02"
  s.description = "Spree's API".freeze
  s.email = ["ryan@spreecommerce.com".freeze]
  s.homepage = "http://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Spree's API".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<jsonapi-rspec>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<spree_core>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<rabl>.freeze, ["~> 0.14.2"])
    s.add_runtime_dependency(%q<fast_jsonapi>.freeze, ["~> 1.5"])
    s.add_runtime_dependency(%q<doorkeeper>.freeze, ["~> 5.2", ">= 5.2.1"])
  else
    s.add_dependency(%q<jsonapi-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<spree_core>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<rabl>.freeze, ["~> 0.14.2"])
    s.add_dependency(%q<fast_jsonapi>.freeze, ["~> 1.5"])
    s.add_dependency(%q<doorkeeper>.freeze, ["~> 5.2", ">= 5.2.1"])
  end
end
