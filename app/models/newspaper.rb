class Newspaper < ActiveRecord::Base
	attr_accessible :title, :editor

	validates :title, :editor, presence: true

	has_many :subscription_plans
end