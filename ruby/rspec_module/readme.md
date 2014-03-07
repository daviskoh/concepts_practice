# Adding Helper Modules to Rspec

## Context
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

