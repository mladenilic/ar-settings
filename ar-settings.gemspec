Gem::Specification.new do |s|
  s.name = 'ar-settings'
  s.version = '0.0.0'
  s.date = '2019-03-19'
  s.summary = 'Simple global database stored application configuration'
  s.description = 'Store your application configuration in database as key/value pairs'
  s.authors = ['Mladen Ilic']
  s.email = 'mladen@drei.one'
  s.files = `git ls-files lib *.md`.split("\n")
  s.homepage = 'https://drei.one'

  s.require_paths = ['lib']
  s.license = 'MIT'
end
