class SubscriptionPlan < ActiveRecord::Base
	attr_accessible :price, :weekly, :newspaper_id

	validates :newspaper, presence: true
	validates :price, numericality: true
	validates :weekly, inclusion: {in: [true, false]}

	belongs_to :newspaper, inverse_of: :subscription_plans
end