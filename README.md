# jQuerySlickRails

[![Gem Version](https://badge.fury.io/rb/jquery-slick-rails.svg)](http://badge.fury.io/rb/jquery-slick-rails)
[![Build Status](https://travis-ci.org/bodrovis/jquery-slick-rails.svg?branch=master)](https://travis-ci.org/bodrovis/jquery-slick-rails)

A ruby gem that uses the Rails asset pipeline to include the jQuery Slick plugin by Ken Wheeler
(https://kenwheeler.github.io/slick/).

## Installation

Add this line to your application's Gemfile:

    gem "jquery-slick-rails"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery-slick-rails

NOTE: this is a jQuery plugin so you will also need the `jquery-rails` gem:

* https://github.com/rails/jquery-rails

## Usage

You will need to add this line into your `application.js`:

    //= require jquery.slick

Add

    @import 'slick';

into `application.scss` or

    /*
    [...]
    *= require slick
    [...]
    */

into `application.css`.

Starting from version **1.4.0** Slick provides an optional theme, so if you want to employ default styling, include
the following line:

    @import 'slick-theme';

into `application.scss` or

    /*
    [...]
    *= require slick-theme
    [...]
    */

into `application.css`.

You may use [this](https://github.com/bodrovis/jquery-slick-rails-demo) simple Rails app as an example
(it also shows how to use the plugin with Turbolinks).

## Testing

Run

    $ bundle install
    
and then

    $ rake test

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make sure tests are passing
4. Commit your changes (`git commit -am 'Added some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create new Pull Request

## License

This plugin is licensed under the [MIT License](https://github.com/bodrovis/jquery-slick-rails/blob/master/LICENSE.txt).

Copyright (c) 2016 [Ilya Bodrov](http://bodrovis.tech)