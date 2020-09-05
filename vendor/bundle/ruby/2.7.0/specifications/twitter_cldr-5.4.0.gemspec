# -*- encoding: utf-8 -*-
# stub: twitter_cldr 5.4.0 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter_cldr".freeze
  s.version = "5.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Cameron Dutro".freeze]
  s.date = "2020-02-26"
  s.description = "Ruby implementation of the ICU (International Components for Unicode) that uses the Common Locale Data Repository to format dates, plurals, and more.".freeze
  s.email = ["cdutro@twitter.com".freeze]
  s.homepage = "https://twitter.com".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Ruby implementation of the ICU (International Components for Unicode) that uses the Common Locale Data Repository to format dates, plurals, and more.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<camertron-eprun>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<cldr-plurals-runtime-rb>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<camertron-eprun>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_dependency(%q<cldr-plurals-runtime-rb>.freeze, ["~> 1.0"])
  end
end
