class AddSubscriptionPlans < ActiveRecord::Migration
  def change
		create_table :subscription_plans do |t|
			t.float :price
			t.boolean :weekly
			t.integer :newspaper_id

			t.timestamps
		end

		add_index :subscription_plans, :newspaper_id
  end
end
