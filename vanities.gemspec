# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{vanities}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["J. Austin Hughey"]
  s.date = %q{2011-03-20}
  s.description = %q{Give each of your models a simple 'vanity' URL.  
                                Makes example.com/users/1 into something like example.com/foobar}
  s.email = %q{jaustinhughey@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/generators/vanities/USAGE", "lib/generators/vanities/templates/create_vanities.rb", "lib/generators/vanities/templates/vanities_controller.rb", "lib/generators/vanities/templates/vanity.rb", "lib/generators/vanities/vanities_generator.rb", "lib/vanities.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/generators/vanities/USAGE", "lib/generators/vanities/templates/create_vanities.rb", "lib/generators/vanities/templates/vanities_controller.rb", "lib/generators/vanities/templates/vanity.rb", "lib/generators/vanities/vanities_generator.rb", "lib/vanities.rb", "Manifest", "vanities.gemspec"]
  s.homepage = %q{https://github.com/jaustinhughey/vanities}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Vanities", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{vanities}
  s.rubygems_version = %q{1.6.0}
  s.summary = %q{Give each of your models a simple 'vanity' URL.   Makes example.com/users/1 into something like example.com/foobar}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
