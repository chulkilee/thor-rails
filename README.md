# Thor::Rails
> Extensions to Thor for working within Rails environments

Simplify Thor commands that rely on Rails components

## Installation

Add this line to your application's Gemfile:

    gem 'thor-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install thor-rails

## Usage

Include Thor::Rails into your Thor command and the Rails application will automatically
be booted when your action is invoked.

**NOTE:** The environment loaded can be controlled via the standard `RAILS_ENV` environmental variable.

```ruby
require 'thor/rails'

class MyCommand < Thor
  include Thor::Rails

  desc 'do_something', 'do some work'
  def do_something
    # Rails environment is loaded and available!
    say ::Rails.env
  end
end
```

## Contributing

Patches are always welcome and thank you to all [project contributors](https://github.com/thegarage/thor-rails/graphs/contributors)!

Interested in contributing?  Review the project [contribution guidelines](CONTRIBUTING.md) and get started!
