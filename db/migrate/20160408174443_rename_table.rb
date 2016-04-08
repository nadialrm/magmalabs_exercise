class RenameTable < ActiveRecord::Migration
  def change
  	rename_table :departments_schedule, :departments_schedules
  end
end
