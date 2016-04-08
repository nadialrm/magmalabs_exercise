class CreateEmployesAttendances < ActiveRecord::Migration
  def change
    create_table :employes_attendances do |t|
	  t.belongs_to :employe,  index: true
	  t.belongs_to :departments_schedule,  index: true
      t.datetime :arrival
      t.integer :arrival_ontime, comment: "0: ontime, 1: late"
      t.datetime :departure
      t.integer :departure_ontime, comment: "0: ontime, 1: before"
      t.integer :status, null: false, default: 0, comment: "0: Arrival register, 1:departure register, completed time of work "
      t.timestamps null: false
    end
  end
end
