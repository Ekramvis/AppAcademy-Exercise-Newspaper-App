class AddNewspapers < ActiveRecord::Migration
  def change
		create_table :newspapers do |t|
			t.string :title
			t.string :email

			t.timestamps
		end
  end
end
