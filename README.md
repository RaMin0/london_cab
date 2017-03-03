# LondonCab

[![Gem Version](https://badge.fury.io/rb/london_cab.svg)](http://badge.fury.io/rb/london_cab)
[![Build Status](https://travis-ci.org/RaMin0/london_cab.svg?branch=master)](https://travis-ci.org/RaMin0/london_cab)
[![Code Climate](https://codeclimate.com/github/RaMin0/london_cab/badges/gpa.svg)](https://codeclimate.com/github/RaMin0/london_cab)

A Ruby client for the [London Cab](http://65.182.108.16) APIs.

[![](london_cab.png)](http://65.182.108.16)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'london_cab'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install london_cab
```

## Usage

### API Token
To acquire an API token, use the [london_cab-auth](https://github.com/RaMin0/london_cab-auth) gem. Use the same credentials for your corporate London Cab account.

### Configuration

```ruby
LondonCab.configure do |config|
  config.token = ENV['LONDON_CAB_API_TOKEN']
end
```

This sets a global default token. You can also pass a token to the initializer of `LondonCab::Client`.

```ruby
client = LondonCab::Client.new(token: ENV['LONDON_CAB_API_TOKEN'])
```

The instance token will be used over the global default.

The following globals settings are supported via `LondonCab.configure`.

setting      | description
-------------|------------
token        | London Cab API token.
logger       | An optional logger.<br/>**Default:** `Logger.new(STDOUT)` at `Logger::WARN` level.

### Client

The London Cab API allows you to build applications that interact with London Cab.

#### Configuration
setting      | description
-------------|------------
endpoint     | London Cab endpoint.<br/>**Default:** http://65.182.108.16:3467/api
user_agent   | User-agent.<br/>**Default:** LondonCab/VERSION.
token        | **Required.** London Cab API token.
logger       | **Optional.** `Logger` instance that logs HTTP requests.

## Documentation

### Rides
You can use the client to make requests related to rides.

#### Request Rides

Request rides with `#ride_request`.

```ruby
client.ride_request(PickupLong:  '31.276942',
                    PickupLat:   '29.962696',
                    DropoffLong: '31.330108',
                    DropoffLat:  '30.056610')
```

## History

The structure of this gem is based on [slack-ruby-client](https://github.com/slack-ruby/slack-ruby-client).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/RaMin0/london_cab]().

