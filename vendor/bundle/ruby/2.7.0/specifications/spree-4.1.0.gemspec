# -*- encoding: utf-8 -*-
# stub: spree 4.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree".freeze
  s.version = "4.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze]
  s.date = "2020-03-02"
  s.description = "Spree is an open source e-commerce framework for Ruby on Rails. Join us on http://slack.spreecommerce.org".freeze
  s.email = "sean@spreecommerce.com".freeze
  s.homepage = "http://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Full-stack e-commerce framework for Ruby on Rails.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<spree_core>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<spree_api>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<spree_backend>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<spree_frontend>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<spree_sample>.freeze, ["= 4.1.0"])
    s.add_runtime_dependency(%q<spree_cmd>.freeze, ["= 4.1.0"])
  else
    s.add_dependency(%q<spree_core>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<spree_api>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<spree_backend>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<spree_frontend>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<spree_sample>.freeze, ["= 4.1.0"])
    s.add_dependency(%q<spree_cmd>.freeze, ["= 4.1.0"])
  end
end
