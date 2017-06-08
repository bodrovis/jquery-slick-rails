# jQuerySlickRails

[![Gem Version](https://badge.fury.io/rb/jquery-slick-rails.svg)](http://badge.fury.io/rb/jquery-slick-rails)
[![Build Status](https://travis-ci.org/bodrovis/jquery-slick-rails.svg?branch=master)](https://travis-ci.org/bodrovis/jquery-slick-rails)
[![Dependency Status](https://gemnasium.com/badges/github.com/bodrovis/jquery-slick-rails.svg)](https://gemnasium.com/github.com/bodrovis/jquery-slick-rails)

A ruby gem that uses the Rails asset pipeline to include the jQuery Slick plugin by Ken Wheeler
(https://kenwheeler.github.io/slick/).

## Installation

Add this line to your application's Gemfile:

    gem "jquery-slick-rails"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jquery-slick-rails

NOTE: this is a jQuery plugin so you will also need the `jquery-rails` gem (it is not added by default starting from Rails 5.1):

* https://github.com/rails/jquery-rails

## Usage

You will need to add this line into your `application.js`:

    //= require jquery.slick

Then into `application.scss`:

    @import 'slick';

or into `application.css`:

    /*
    *= require slick
    */

Starting from version **1.4.0** Slick provides an optional theme, so if you want to employ default styling, include
the following line into `application.scss`:

    @import 'slick-theme';

or into `application.css`:

    /*
    *= require slick-theme
    */

 
You may use [this](https://github.com/bodrovis/jquery-slick-rails-demo) simple Rails app as an example
(it also shows how to use the plugin with Turbolinks).

## Turbolinks Gotcha

If you are using Slick with Turbolinks, you might run into some problems with the browser's "back" button.
If that happens, the following solution *might help*. Add this code to your *layouts/application.html.erb*:

    <head>
       <% if content_for?(:head) %>
       <%= yield(:head) %>
       <% end %>
    </head>

And then on any page that has Slick:

    <% content_for :head do %>
      <meta name="turbolinks-cache-control" content="no-cache">
    <% end %>
    
The idea is that we are [opting the page out of caching](https://github.com/turbolinks/turbolinks#opting-out-of-caching), as Turbolinks uses it during [restoration visits](https://github.com/turbolinks/turbolinks#restoration-visits) (that is, when you click "back").

Another solution was to employ the `unslick` method to prepare your document before Turbolinks caches it:

    jQuery(document).on('turbolinks:before-cache', $('.scroller').slick('unslick'))
    
However, this does not seem to work anymore - maybe because [Slick has lots of opened issues related to unslick](https://github.com/kenwheeler/slick/search?q=unslick&type=Issues&utf8=%E2%9C%93).

Read more [on StackOverflow](http://stackoverflow.com/questions/39627881/jquery-plugin-initialization-on-browser-back-button-for-turbolinks-rails-5).

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

Copyright (c) 2017 [Ilya Bodrov](http://bodrovis.tech)
