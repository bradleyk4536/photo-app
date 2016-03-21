# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
	:address => 'smtp.sendgrid.net',
	:port => '587',
	:authentication => :plain,
	:username => 'BRADLEYKG4536',
	:password => 'jetta@777',
	:domain => 'heroku.com',
	:enable_starttls_auto => true
	}
