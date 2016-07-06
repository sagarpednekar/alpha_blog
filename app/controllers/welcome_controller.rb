class WelcomeController < ApplicationController
	def home
		redirect_to articles_path if loged_in?
	end
end