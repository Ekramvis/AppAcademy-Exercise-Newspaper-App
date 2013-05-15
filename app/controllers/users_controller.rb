class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			set_cookie(@user)
			redirect_to :back
		else
			render :new
		end
	end

	def show
		@user
	end

	def index
		@user
	end

end