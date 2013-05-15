class SubscriptionPlan < ActiveRecord::Base
	attr_accessible :price, :weekly, :newspaper_id

	validates :newspaper_id, presence: true
	validates :price, numericality: true
	validates :weekly, inclusion: {in: [true, false]}

	belongs_to :newspaper
end