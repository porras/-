# encoding: utf-8

Gem::Specification.new do |s|
  s.name              = "i_love_unicode"
  s.version           = "0.0.1"
  s.date              = Date.today
  s.summary           = "✓ Semantically awesome testing library"
  s.author            = "Sergio Gil"
  s.email             = "sgilperez@gmail.com"
  s.homepage          = "http://github.com/porras/✓"
  
  s.extra_rdoc_files  = %w(README.md)
  s.rdoc_options      = %w(--main README.md)
  
  s.files             = %w(README.md) + Dir.glob("{lib/**/*}")
  s.require_paths     = ["lib"]
end