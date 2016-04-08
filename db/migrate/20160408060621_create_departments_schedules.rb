class CreateDepartmentsSchedules < ActiveRecord::Migration
	def change
		create_table :departments_schedule do |t|
			t.belongs_to :department,  index: true
			t.time :arrival, null: false, default: '00:00'
			t.time :departure, null: false, default: '00:00'
			t.boolean :sun, null: false, default: false
			t.boolean :mon, null: false, default: false
			t.boolean :tue, null: false, default: false
			t.boolean :wed, null: false, default: false
			t.boolean :thu, null: false, default: false
			t.boolean :fri, null: false, default: false
			t.boolean :sat, null: false, default: false
			t.integer :status, null: false, default: 1
			t.timestamps null: false
		end
	end
end
