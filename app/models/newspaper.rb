class Newspaper < ActiveRecord::Base
	attr_accessible :title, :editor, :subscription_plans_attributes

	validates :title, :editor, presence: true

	has_many :subscription_plans, inverse_of: :newspaper

	accepts_nested_attributes_for :subscription_plans
end