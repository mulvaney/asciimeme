# Asciimeme

A gem for creating ascii art memes.

## Installation

Add this line to your application's Gemfile:

    gem 'asciimeme'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install asciimeme

## Usage

```ruby
require 'asciimeme'
generator = Asciimeme::Generator.new('interesting')
generate.write("I do not always make memes",
               "But when I do, I use asciimeme")
```

Or from the command line:

```
asciimeme interesting "I do not always..." "But when I do..."
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
