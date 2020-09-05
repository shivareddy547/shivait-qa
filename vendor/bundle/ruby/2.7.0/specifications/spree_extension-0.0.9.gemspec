# -*- encoding: utf-8 -*-
# stub: spree_extension 0.0.9 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_extension".freeze
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Damian Legawiec".freeze]
  s.date = "2019-02-04"
  s.description = "Common tools and helpers for Spree Extensions developers".freeze
  s.email = "damian@sparksolutions.co".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Common tools and helpers for Spree Extensions developers".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.2"])
    s.add_runtime_dependency(%q<spree_core>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.2"])
    s.add_dependency(%q<spree_core>.freeze, [">= 0"])
  end
end
