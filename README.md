# JquerySlickRails

[![Gem Version](https://badge.fury.io/rb/jquery-slick-rails.svg)](http://badge.fury.io/rb/jquery-slick-rails)

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

In your `application.js` you will need to add this line:

    //= require jquery.slick

and this line

    @import 'slick';

into your `application.css.scss`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

This plugin is licensed under the [MIT License](https://github.com/bodrovis/jquery-slick-rails/blob/master/LICENSE.txt).

Copyright (c) 2014 [Ilya Bodrov](http://radiant-wind.com)