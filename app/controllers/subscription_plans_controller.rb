class SubscriptionPlansController < ApplicationController

	def new
		@subscriptionplan = SubscriptionPlan.new
	end

	def create
		@subscriptionplan = SubscriptionPlan.new(params[:subscription_plan])
		@subscriptionplan.newspaper_id = params[:id]

		if @subscriptionplan.save
			redirect_to :back
		else
			render :new
		end
	end


end