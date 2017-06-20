Gem::Specification.new do |s|
  s.name        = 'easy-struct'
  s.version     = '0.0.2'
  s.date        = '2017-06-20'
  s.summary     = 'Easy Struct'
  s.description = 'A parser for HTTParty that parses the responce to objects and snake_case access to camelCase methods.'
  s.authors     = ['David Roy']
  s.email       = 'david.roy@cabbit.co.uk'
  s.files       = ['lib/easy_struct.rb']
  s.homepage    = 'http://rubygems.org/gems/easy_struct'
  s.license     = 'MIT'
  s.add_dependency 'httparty', '~> 0.15.5'
  s.add_dependency 'activesupport', '~> 5.1.1'
end
