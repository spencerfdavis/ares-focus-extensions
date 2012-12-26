Gem::Specification.new do |s|
  s.name = %q{ares-focus-extensions}
  s.version = File.read "VERSION"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Spencer Davis"]
  s.date = %q{2012-12-24}
  s.summary = %q{Extensions for ActiveResource (Rails 3).}
  s.description = %q{Several add-ons and modifications to ActiveResource}
  s.email = %q{spencerfdavis@gmail.com}
  
  s.files = Dir['lib/**/*']
  #s.files = ["CHANGELOG", "VERSION", "ares-focus-extensions.gemspec", "lib/ares-focus-extensions.rb"]
 
  s.homepage = %q{http://github.com/spencerfdavis}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  
  s.add_dependency(%q<activeresource>, ["~> 3.0"])
end
