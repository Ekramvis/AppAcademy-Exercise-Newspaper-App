class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_name(params[:name])

		if user && user.authenticate(params[:password])
			set_cookie(user)
			redirect_to new_newspaper_url
		else
			render :new
		end
	end

	def destroy
		logout
		redirect_to :back
	end
end