Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-articles'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Articles engine for Refinery CMS'
  s.date              = '2011-06-03'
  s.summary           = 'Articles engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
