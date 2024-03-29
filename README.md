# Turnip Documentation Formatter

This gem extends the default RSpec documentation formatter for [Turnip](https://github.com/jnicklas/turnip) to print each step on it's own line.

This makes it easier to see on exactly which step an error occured.

## Screenshot

![Before example](https://user-images.githubusercontent.com/242972/81497557-779c7900-92e9-11ea-919f-d4d714540267.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'turnip_documentation_formatter'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install turnip_documentation_formatter
    
And require the formatter in `spec_helper.rb`:

```ruby
require "turnip_documentation_formatter"
```

## Usage

Use the default documentation formatter when running RSpec (`rspec --format documentation`).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aramvisser/turnip-documentation-formatter.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
