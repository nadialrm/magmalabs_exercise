class EmployesAttendance < ActiveRecord::Base
	##--- Associations
	belongs_to :employe
	belongs_to :department
end
