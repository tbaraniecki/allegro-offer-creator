$:.push File.expand_path('../lib', __FILE__)

gem_path_version = ENV.fetch('GEM_PATH_VERSION', '0-dev').strip

Gem::Specification.new do |s|
  s.name = File.basename(Dir.pwd)
  s.version = "1.0.#{gem_path_version}"
  s.authors = ['Tomasz Baraniecki']
  s.summary = ''

  s.files = Dir['README.md', 'lib/**/*']
  s.require_path = ['lib']

  s.test_files = Dir['spec/**/*']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'

  s.required_ruby_version = '>= 2.5.3'
end
