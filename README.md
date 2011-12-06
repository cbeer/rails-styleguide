# Rails-Styleguide

This is a Rails 3.1 mountable Engine version of kneath/kss, a CSS
documentation methodology.

## Installation

Add the engine to your `Gemfile`:
```ruby
gem "rails-styleguide"
```

Configure the route to the engine:

```ruby
mount Styleguide::Engine => "/styleguide"
```

Visit http://localhost:3000/styleguide

Customize app/views/styleguide/index.html.erb to build your own
styleguide

