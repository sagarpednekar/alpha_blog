class WelcomeController < ApplicationController
	def home
		redirect_to articles_path if loged_in?
		@disable_nav = true
	end
	
	def landing_page
		
	end
end