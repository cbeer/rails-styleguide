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

Visit [http://localhost:3000/styleguide](http://localhost:3000/styleguide)

Override [`app/views/styleguide/default.html.erb`](https://github.com/cbeer/rails-styleguide/blob/master/app/views/styleguide/default.html.erb) in your local application to build your own styleguide.

## Configuration

By default, this engine will look in the host application `./app/assets/stylesheets` for
stylesheets to consume. You can change this default, or add additional
styleguides, by adding an initalizer to your application, e.g.:

`config/initializers/styleguide_config.rb`

```ruby
StyleguideController.config.stylesheets_path[:default] = '/path/to/stylesheets'
StyleguideController.config.stylesheets_path[:other_plugin_stylesheets] = '/path/to/my_plugin/app/assets/stylesheets'
```

In this example, when you visit
[http://localhost:3000/styleguide](http://localhost:3000/styleguide),
the styleguide will use stylesheets from
`/path/to/stylesheets`. If you visit
[http://localhost:3000/styleguide/other_plugin_stylesheets](http://localhost:3000/styleguide/other_plugin_stylesheets), the stylesheets from `/path/to/my_plugin/app/assets/stylesheets` will be used instead. 
