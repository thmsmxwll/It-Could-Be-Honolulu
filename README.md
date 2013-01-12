It Could Be Honolulu
====================
A simple [Twitter Bootstraped](http://twitter.github.com/bootstrap/) photo portfolio built on Rails.

Installation
============

If you are new to Rails development, check out guides for getting your development environment set up for [Mac](http://astonj.com/tech/setting-up-a-ruby-dev-enviroment-on-lion/) and [Windows](http://jelaniharris.com/2011/installing-ruby-on-rails-3-in-windows/).

    git clone https://github.com/thmsmxwll/It-Could-Be-Honolulu
    cd it-could-be-honolulu
    bundle install
    rake db:migrate

Setup 'config/application.yml' with the [figaro](https://github.com/laserlemon/figaro) gem. 

Install figaro:

    rails g figaro:install

This generates a commented 'config/application.yml' file and ignores it in your .'gitignore'.

Add s3 credentials to 'config/application.yml': 

    AWS_ACCESS_KEY_ID: "Key Id"
    AWS_SECRET_ACCESS_KEY: "Secrect Access Key"

You can also add your secret token 'config/initializers/secret_token.rb' to the 'config/application.yml' if required.

Start the local server:

    rails s

Setup admin:

    rails console

    Admin.create! do |u|
      u.email = 'sample@sample.com'
      u.password = 'please'
    end

Login as admin: 

    [localhost:3000/admins/sign_in](http://localhost:3000/admins/sign_in)

To Do
=====

- refactor index page
- move website specific information into the config file: meta, title, etc.
- add kaminari gem with endless scroll

    
