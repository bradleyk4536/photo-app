class WelcomeController < ApplicationController

#	perform before action for all controllers but skip it for welcome page

	skip_before_action :authenticate_user!, only: [:index]

#	def index
#		@disable_nav = true
#  end
end
