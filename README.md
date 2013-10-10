# Omniauth Quickbooks

[Omniauth Quickbooks](https://github.com/davidlumley/omniauth-quickbooks) is an [OmniAuth](https://github.com/intridea/omniauth) authentication strategy for [Quickbooks](http://quickbooks.intuit.com/).


## Installation

Add this line to your application's Gemfile:

    gem 'omniauth', '~> 1.0.0'
    gem 'omniauth-quickbooks'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-quickbooks

## Usage

Register on Intuit's [developer site](https://developer.intuit.com) and create an application.

For a Rack application:

    use OmniAuth::Builder do
      provider :quickbooks, CONSUMER_KEY, CONSUMER_SECRET
    end

For a Rails application:

    # config/intializers/omniauth.rb
    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :quickbooks, CONSUMER_KEY, CONSUMER_SECRET
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request