Wisdom


This (will be) a Rails engine to make it really easy to make a simple, searchable, one page knowlage base for whatever.

WHY?

One day I got really angry that this code didn't exist.  Yes it is really easy, but no one should ever have to write this again.

steps.
1. include gem

```ruby
gem 'wisdom', github:'maxwell/wisdom'
```
 2. run migrations

```bash
  bundle && rake wisdom:install:migrations db:migrate db:test:prepare
```

3. Mount it in your routes.rb

```ruby
Rails.application.routes.draw do
  mount Wisdom::Engine => "/wisdom"
end
```

4. (optional) Make an initializer to set some defaults

```ruby

Wisdom.config do |config|
  config.current_user_method  = lambda{ current_user }
  config.admin_method = :is_staff?
  config.site_title = "My Documentation site"
  config.contact_email = 'maxwell@backerkit.com'
end

```

Thats it!

Now go to your wisdom route and start making some docs.


Want to help? Submit a pull request with tests and I will be a happy camper.

This project rocks and uses MIT-LICENSE.