# Glyphicons

Glyphicons for Bootstrap 3 and 4

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'glyphicons'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install glyphicons

## Usage

Add asset path for fonts in `config/application.rb`:
```ruby
# fonts  
config.assets.paths << Rails.root.join("app", "assets", "fonts")
config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
```


Import Bootstrap styles in `app/assets/stylesheets/application.scss`:
```scss
@import 'glyphicons';
```
Icon examples for html
```html
<div class="the-icons">
  <span class="glyphicon glyphicon-glass"></span>
  <span class="glyphicon glyphicon-music"></span>
</div>
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mtunjic/glyphicons. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## License for GLYPHICONS Halflings in Bootstrap

GLYPHICONS Halflings font is also released as an extension of a Bootstrap www.getbootstrap.com for free and it is released under the same license as Bootstrap. While you are not required to include attribution on your Bootstrap-based projects, I would certainly appreciate any form of support, even a nice Tweet is enough. Of course if you want, you can say thank you and support me by buying more icons on GLYPHICONS.com.

