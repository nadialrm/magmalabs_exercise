class CreateEmployes < ActiveRecord::Migration
	def change
		create_table :employes do |t|
			t.string :first_name, null: false, limit: 50, default:''
			t.string :last_name, null:false, limit:50, default:''
			t.string :address, null:false, limit:255, default:''
			t.string :phone, null:false, limit:30, default:''
			t.string :barcode, null:false, unique:true 
			t.belongs_to :department,  index: true
			t.integer :status, null: false, default: 1
			t.timestamps null: false
		end
	end
end
