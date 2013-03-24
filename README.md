# Alphabeta

This gem adds a simple alpha/beta landing page and signup form to attract
potential users in the early phase of app development.  Instead of
waiting until your bohemoth application is picture perfect, you can
start to accumulate interest and potential beta testers.

Seeing your baby deployed and online (even with *merely* a lowly landing page) is
a great motivator to continue developing -- especially if you're doing
so in your spare time.

# Installation

Install the gem in a rails application with
```ruby
gem install alphabeta
```
Afterwards, mount the engine at the top of the routes.rb file:
```ruby
mount Alphabeta::Engine => "/"
```
This includes the engine's routes before all others, ensuring your
application will respond to the Alphabeta::Signup controller's defined actions (show/create)

Finally, copy over the migration(s) and migrate the db.
```ruby
rake alphabeta:install:migrations
rake db:migrate
```
Everything should now be working.  You can check by starting your server with
```ruby
rails s
```
and navigating to `localhost:3000/`.  You should see a plain signup form
with a generic welcome message and signup form.

If not, feel free to open an issue on Github.

# I18n
The gem supports internationalization by default.  To change the text, be sure to edit the delivered .yml file.
These will be copied over when the install generator is called.  Additional language strings can be added through the proper .yml file.

# TODO

1. Add generator to copy over view(s) for modification in
   application.
2. Allow for configuration of template engine and provide basic templates for each (erb, haml, slim)

# License
This project rocks and is licensed under the terms and conditions of the MIT-LICENSE.


