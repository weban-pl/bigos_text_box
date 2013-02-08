## BigosTextBox
Widget with contact form.

## Installation

BigosTextBox works with Rails 3.1 onwards. You can add it to your Gemfile with:

```ruby
gem "bigos_text_box", :git=>"git://github.com/weban/bigos_text_box.git"

```

Run the bundle command to install it.

After you install BigosTextBox and add it to your Gemfile, you need to run the generator:

```console
rails generate bigos_text_box:install
rake bigos_text_box:install:migrations
rake db:migrate
```

## Customization

You can use to generate view you can overwrite
```console
rails generate bigos_text_box:views
```