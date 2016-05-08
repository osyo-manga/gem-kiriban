# Kiriban

Checking kiriban.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kiriban'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kiriban

## Usage

```ruby
require "kiriban"

# キリバン
p 10000.kiriban?
p 11111.kiriban?
p 12345.kiriban?
p 12321.kiriban?

# ゼロバン（先頭以外が 0）
p 10000.zeroban?

# ゾロバン（同じ数字）
p 11111.zoroban?

# 連番（連続する数字）
p 12345.renban?

# ミラバン（回文数である数）
p 12321.miraban?
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/osyo-manga/gem-kiriban.

