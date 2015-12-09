class PagesController < ApplicationController
	def about
	end

	def list_users
		@users = User.all
	end
end
