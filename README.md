# RailsMatchingGem

Use this gem to match attributes between your object instances. 
It basically returns the percentage of attributes matched between two instances.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_matching'
```

And then execute:

    $ bundle install

## Usage Examples:

```ruby
	# Matches all instances from a model with same model
	# Returns object id, object id that id matched against, and percentage of match
	RailsMatching.against_itself(User.all)
	# [ [1, 2, 33.0 ]
	#   [1, 3, 0.0 ]
	#   [1, 4, 88.0 ] ]
```

```ruby
	# Matches one instance from a model with all instances from same model
	# Returns object id, object id that id matched against, and percentage of match
	instance = User.create(name: "Test", age: 22, job_title: "writer")
	RailsMatching.instance_against_all(instance, User.all)
	# You can also exclude attributes from match
	RailsMatching.instance_against_all(instance, User.all, exclude_attrs: ["name"])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

gem build rails_matching.gemspec
gem install rails_matching-0.1.0.gem  

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jonaslsl/rails_matching. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

