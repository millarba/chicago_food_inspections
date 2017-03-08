# ChicagoFoodInspections

This gem is an easy way to search Chicago's public records on health inspections so you can find out if your favorite restaurant is actually disgusting!  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chicago_food_inspections'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chicago_food_inspections

## Usage

To gather all the inspection results in the city, use this.

```ruby
require 'chicago_food_inspections'

inspections = ChicagoFoodInspections::Inspection.all
```

If you'd like to search for a particular restaurant or other search term, try this example.

```ruby
sushi_inspections = ChicagoFoodInspections::Inspection.search("sushi")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/chicago_food_inspections. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

