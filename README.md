# jQuerySlickRails

![Gem](https://img.shields.io/gem/v/jquery-slick-rails)
[![Build Status](https://travis-ci.com/bodrovis/jquery-slick-rails.svg?branch=master)](https://travis-ci.com/github/bodrovis/jquery-slick-rails)
![Downloads total](https://img.shields.io/gem/dt/jquery-slick-rails)

A ruby gem that uses the Rails asset pipeline to include the jQuery Slick plugin by Ken Wheeler
(https://kenwheeler.github.io/slick/).

If you are using Rails 6 with Webpacker then you don't need this gem (install Slick directly from NPM instead). Check out [this sample app](https://github.com/bodrovis/jquery-slick-rails-demo/tree/master/Rails6Webpacker) for more info.

## DEPRECATION NOTICE

This gem was created in 2014 and since then it has been downloaded more than 2 million times. I'm glad you guys found it useful! However, it's time to move on. Rails 6 uses Webpacker as a de-facto standard to bundle assets therefore **this gem became redundant for setups that utilize Webpacker or other bundlers like esbuild**. Moreover, Rails 7 is coming in December 2021 and this new version uses another modern approach: you can rely on [jsbundling-rails](https://github.com/rails/jsbundling-rails) and choose your favourite bundler (Webpacker, esbuild, rollup). Basically, it means that it's not recommended to install front-end packages as Ruby gems anymore.

Another thing to mention is that **Slick itself was abandoned** by its maintainer: there are no new releases since 2018. Slick was a great solution back in the day but now it was superseded by other modern libraries that do not rely on jQuery.

Therefore, **jquery-slick-rails** is officially deprecated since December, 2021. **Version 1.10.0 is the final release** I'm going to roll out: it is tested with Rails 7 so it should still work fine with older setups. But once again: it's very much recommended to migrate to jsbundling-rails or Webpacker.

Thank you for your attention, and hopefully you'll find [my other solutions useful](https://rubygems.org/profiles/bodrovis).

*Ilya Bodrov-Krukowski*

## Installation

Add this line to your application's Gemfile:

```ruby
gem "jquery-slick-rails"
```

And then execute:

```console
$ bundle
```

Or install it yourself as:

```console
$ gem install jquery-slick-rails
```

NOTE: this is a jQuery plugin so you will also need the `jquery-rails` gem (it is not added by default starting from Rails 5.1):

* https://github.com/rails/jquery-rails

## Usage

You will need to add this line into your `application.js`:

```javascript
//= require jquery.slick
```

Then into `application.scss`:

```scss
@import 'slick';
```

or into `application.css`:

```css
/*
*= require slick
*/
```

Starting from version **1.4.0** Slick provides an optional theme, so if you want to employ default styling, include
the following line into `application.scss`:


```scss
@import 'slick-theme';
```

or into `application.css`:

```css
/*
*= require slick-theme
*/
```

### Demos

[Check out this repo showing how to use Slick carousel with Rails app with and without Webpacker](https://github.com/bodrovis/jquery-slick-rails-demo) (it also shows how to use the plugin with Turbolinks).

## Turbolinks Gotcha

If you are using Slick with Turbolinks, you might run into some problems with the browser's "back" button.
If that happens, the following solution *might help*. Add this code to your *layouts/application.html.erb*:


```erb
<head>
  <% if content_for?(:head) %>
    <%= yield(:head) %>
  <% end %>
</head>
```

And then on any page that has Slick:

```erb
<% content_for :head do %>
  <meta name="turbolinks-cache-control" content="no-cache">
<% end %>
```

The idea is that we are [opting the page out of caching](https://github.com/turbolinks/turbolinks#opting-out-of-caching), as Turbolinks uses it during [restoration visits](https://github.com/turbolinks/turbolinks#restoration-visits) (that is, when you click "back").

Another solution was to employ the `unslick` method to prepare your document before Turbolinks caches it:

```javascript
jQuery(document).on('turbolinks:before-cache', function() { $('.scroller').slick('unslick') })
```
    
However, this does not seem to work anymore - maybe because [Slick has lots of opened issues related to unslick](https://github.com/kenwheeler/slick/search?q=unslick&type=Issues&utf8=%E2%9C%93).

Read more [on StackOverflow](http://stackoverflow.com/questions/39627881/jquery-plugin-initialization-on-browser-back-button-for-turbolinks-rails-5).

## Testing

Run

```console
$ bundle install
```

and then

```console
$ rake test
```

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
