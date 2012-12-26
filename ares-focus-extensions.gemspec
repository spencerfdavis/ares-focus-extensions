Gem::Specification.new do |s|
  s.name = %q{ares-focus-extensions}
  s.version = File.read "VERSION"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Spencer Davis"]
  s.date = %q{2012-12-26}
  s.summary = %q{Extensions for ActiveResource (Rails 3).}
  s.description = %q{Add-ons including API Key, remove format extensions (.json, .xml) for requests, and configuration file (sites.yml) for each environment's default settings.}
  s.email = %q{spencerfdavis@gmail.com}
  
  s.files = Dir['lib/**/*']
 
  s.homepage = %q{https://github.com/spencerfdavis/ares-focus-extensions}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  
  s.add_dependency(%q<activeresource>, ["~> 3.0"])
end
