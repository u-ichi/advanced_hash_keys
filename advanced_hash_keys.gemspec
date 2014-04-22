# -*- encoding: utf-8 -*-
require File.expand_path('../lib/advanced_hash_keys/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Yuichi UEMURA']
  gem.email         = ['yuichi.u@gmail.com']
  gem.description   = %q(Extends ActiveSupport's symbolize_keys / stringifier_keys to recursively symbolize keys at all levels in a Hash / Array)
  gem.summary       = %q(Extends ActiveSupport's symbolize_keys to recursively symbolize / stringifier all keys in a gem. By default, it is fully backwards compatible with ActiveSupport's symbolize_keys/stringfier_keys method. If the recursive flag is set to true however and it recursively symbolizes any values which are hashes.)
  gem.homepage      = 'http://github.com/u-ichi/advanced_hash_keys'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'advanced_hash_keys'
  gem.require_paths = ['lib']
  gem.version       = AdvancedHashKeys::VERSION

  gem.add_dependency 'rake'
  gem.add_dependency 'activesupport'
  gem.add_development_dependency('rubocop')
  gem.add_development_dependency('rspec')
end
