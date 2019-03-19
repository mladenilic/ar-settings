Gem::Specification.new do |s|
  s.name = 'ar-settings'
  s.version = '0.0.0'
  s.date = '2019-03-19'
  s.summary = 'Simple global database stored application configuration'
  s.description = 'Store your application configuration in database as key/value pairs'
  s.authors = ['Mladen Ilic']
  s.email = 'mladen@drei.one'
  s.files = `git ls-files lib *.md`.split("\n")
  s.homepage = 'https://github.com/mladenilic/ar-settings'

  s.required_ruby_version = '>= 2.3.6'

  s.require_paths = ['lib']
  s.license = 'MIT'

  s.add_development_dependency 'rspec-rails', '~> 3.8'
  s.add_development_dependency 'simplecov'
end
