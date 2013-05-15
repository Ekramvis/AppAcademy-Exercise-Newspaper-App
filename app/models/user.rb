class User < ActiveRecord::Base
	attr_accessible :name, :password, :password_confirmation
	has_secure_password

	validates :name, :password, :password_confirmation, presence: true

	has_many :subscriptions
	has_many :subscription_plans, through: :subscriptions
	has_many :newspapers, through: :subscription_plans

end