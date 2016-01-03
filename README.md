# middleman-generator-tag

middleman-generator-tag is a plugin for Middleman.  
This plugin always insert '<meta name='generator' content="Middleman vX.X.X">` into html.

This plugin support Middleman v3-stable and v4.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'middleman-generator-tag'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-generator-tag

## Usage

In config.rb:

```ruby
activate :generator_tag
```

## Contributing

1. Fork it ( https://github.com/yterajima/middleman-generator-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
