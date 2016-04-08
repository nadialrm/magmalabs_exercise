class CreateDepartments < ActiveRecord::Migration
	def change
		create_table :departments do |t|
			t.string :name, null: false, limit: 50, default: ''
			t.integer :arrival_tolerance, null:false, limit: 2, default: 0
			t.integer :departure_tolerance, null:false, limit: 2, default: 0
			t.integer :status, null: false, default: 1
			t.timestamps null: false
		end
	end
end
