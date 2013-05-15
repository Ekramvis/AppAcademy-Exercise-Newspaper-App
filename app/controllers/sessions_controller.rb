class SessionsController < ApplicationRecord
	def new
	end

	def create
		user = User.find_by_name(params[:name])

		if user && user.authenticate(params[:password])
			user.remember_token = SecureRandom.hex
			cookies.permanent[:remember_token] = user.remember_token
		else
			render :new
		end
	end

	def destroy
	end
end