# -*- encoding: utf-8 -*-
require File.expand_path('../lib/asciimeme/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Mulvaney"]
  gem.email         = ["mike.mulvaney@gmail.com"]
  gem.description   = %q{Create simple ascii art memes}
  gem.summary       = %q{Creates simple ascii art memes}
  gem.homepage      = "http://github.com/mulvaney/asciimeme"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "asciimeme"
  gem.require_paths = ["lib"]
  gem.version       = Asciimeme::VERSION

end
