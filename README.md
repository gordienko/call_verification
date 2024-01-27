# CallVerification

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/call_verification`. To experiment with that code, run `bin/console` for an interactive prompt.

This gem implements a simple client for the sms.ru server to verify a phone number on a call.
You need an api key to use it. Detailed information https://sms.ru/api/code_call.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'call_verification', github: 'gordienko/call_verification'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install call_verification

## Usage

```ruby
client = CallVerification::Client.new(api_key: ENV['SMS_RU_API_KEY'])
client.code_call(phone: '+79992222222', ip: '192.158.1.38') #=> {"status"=>"OK", "code"=>4252, "call_id"=>"202244-1000026", "balance"=>306.61, "cost"=>0.4}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/call_verification. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/call_verification/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
