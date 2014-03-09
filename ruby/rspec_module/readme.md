# Adding Helper Modules to Rspec

## Overview
When using **Capybara** for testing, sometimes you want to test features that require **authentication** / **authorization**. This often requires manually visiting the **/sessions/new** path, inputting the necessary info and clicking submit each time. Hard writing this is a clear violation of the **DRY** principle. We need a way to encapsulate this functionality to **reuse** in future acceptance tests.

## Dependencies
	gem 'rails', '4.0.2'
	gem 'rspec-rails'
	gem 'capybara'

## Files & Directories
**Note**: Only certain files are highlighted here for brevity. Understanding of Rails app directory structure is assumed.

	app/
		assets/
		controllers/
		helpers/
			login_spec_helper.rb
	spec/
		features/
			upload_photos.rb
		spec_helper.rb

The important directories are **app/helpers** and **spec/**
	
## Directions
Don't forget to bundle first.

	bundle install

Run bash command:

	rspec spec/features/.

to start automated testing suite or:

	rspec spec/features/feature.rb

to run specific feature spec.

## Helper Module
In Rails, any helper **modules** go in the **helpers** directory at the root level as illustrated in the directory structure above. In your **login_spec_helper.rb** we define the module as follows:

	module LoginSpecHelper
  		def user_login
	    	visit '/session/new'

    		within 'form.sign-in' do 
		      fill_in :email, with: "bob@bob.com"
		      fill_in :password, with: "Bob"
		    end

	    	click_button 'Sign In'
		end
	end

We have a method called **user_login** that:

1.) Visits the login path '/session/new'

2.) Finds the sign-in form and fills in appropriate login info

3.) Clicks the 'Sign In' button which logs in the user and performs some other functionality depending on how you structured your controller action. 

**Note**: This assumes that you are creating a user **fixture** somewhere in your spec before calling this method. 

## Spec Helper
In Rails, the **spec_helper.rb** file is where any rspec configurations are contained. When you generate your rails app, the spec_helper should look something like this (**with comments removed**):

	ENV["RAILS_ENV"] ||= 'test'
	require File.expand_path("../../config/environment", __FILE__)
	require 'rspec/rails'
	require 'rspec/autorun'

	Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

	ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

	RSpec.configure do |config|
	  config.fixture_path = "#{::Rails.root}/spec/fixtures"

	  config.use_transactional_fixtures = true

	  config.infer_base_class_for_anonymous_controllers = false

	  config.order = "random"
	end

In order to include a module that is **accessible** **in** your **specs**, you will need to set set the **include** attribute on the **config** variable like so:

	config.include LoginSpecHelper

So that your RSpec.configure do |config| block looks like this:

	RSpec.configure do |config|
		config.include LoginSpecHelper # includes helper module
	
		config.fixture_path = "#{::Rails.root}/spec/fixtures"

		config.use_transactional_fixtures = true

		config.infer_base_class_for_anonymous_controllers = false

		config.order = "random"
	end

!!**Note**!!: The name of the module **LoginSpecHelper** is the name of the file **login_spec_helper.rb** in **CamelCase**.

Now, your specs files should have access to the **user_login** method as long as you require 'spec_helper' at the top.