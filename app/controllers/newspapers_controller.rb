class NewspapersController < ApplicationController
	def new
		@newspaper = Newspaper.new
		2.times { @newspaper.subscription_plans.build }
	end

	def create
		@newspaper = Newspaper.new(params[:newspaper])

		if @newspaper.save
			redirect_to :back
		else
			render :new
		end
	end

	def show
		@newspaper
	end

	def index
		@newspaper
	end
end