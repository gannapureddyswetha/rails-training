# -*- encoding: utf-8 -*-
# stub: jenkins-capistrano 0.0.7 ruby lib

Gem::Specification.new do |s|
  s.name = "jenkins-capistrano".freeze
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["cynipe".freeze]
  s.date = "2013-10-29"
  s.description = "The capistrano tasks for Jenkins CI Server".freeze
  s.email = ["cynipe@gmail.com".freeze]
  s.homepage = "https://github.com/cynipe/jenkins-capistrano".freeze
  s.rubygems_version = "2.5.2.3".freeze
  s.summary = "".freeze

  s.installed_by_version = "2.5.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<httparty>.freeze, ["~> 0.8.3"])
      s.add_runtime_dependency(%q<hpricot>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
    else
      s.add_dependency(%q<capistrano>.freeze, [">= 0"])
      s.add_dependency(%q<httparty>.freeze, ["~> 0.8.3"])
      s.add_dependency(%q<hpricot>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>.freeze, [">= 0"])
    s.add_dependency(%q<httparty>.freeze, ["~> 0.8.3"])
    s.add_dependency(%q<hpricot>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
