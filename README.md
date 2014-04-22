# AdvancedHashKeys

Extends ActiveSupport's symbolize_keys/stringify_keys to recursively convert all keys in a gem. By default, it is fully backwards compatible with ActiveSupport's symbolize_keys/stringify_keys method. If the recursive flag is set to true however and it recursively converts any values which are hashes.

## Installation

Add this line to your application's Gemfile:

    gem 'advanced_hash_keys'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install advanced_hash_keys

## Usage

gem install advanced_hash_keys
or
include it in your Gemfile and then run bundle install.

Works on Ruby 2.1.1p76, ActiveSupport version 4.1.0 as of now.

### symbolize_keys Examples:

{'a' => {'b' => 1}}.symbolize_keys = {:a => {'b' => 1}}

{'a' => {'b' => 1}}.symbolize_keys(true) = {:a => {:b => 1}}

{'a' => {'b' => 1}}.symbolize_keys! = {:a => {'b' => 1}}

{'a' => {'b' => 1}}.symbolize_keys!(true) = {:a => {:b => 1}}

### stringify_keys Examples:

{:a => {:b => 1}}.stringify_keys = {'a' => {:b => 1}}

{:a => {:b => 1}}.stringify_keys(true) = {'a' => {'b' => 1}}

{:a => {:b => 1}}.stringify_keys! = {'a' => {:b => 1}}

{:a => {:b => 1}}.stringify_keys!(true) = {'a' => {'b' => 1}}


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Check rspec(`bundle exec rake spec`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request


## Special Thanks

* hash_symoblizer (https://github.com/anjshenoy/hash_symbolizer)
** symbolize_keys(true)'s original repository. 
