$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alphabeta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alphabeta"
  s.version     = Alphabeta::VERSION
  s.authors     = ["Curtis Ekstrom"]
  s.email       = ["ce@canvus.io"]
  s.homepage    = "https://github.com/clekstro/alphabeta"
  s.summary     = "Add alpha/beta signup form to rails 3.2 application."
  s.description = "Rails engine to add landing page signup form to Rails app in early stages of development."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "cucumber-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "email_spec"
end

