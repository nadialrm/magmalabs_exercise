class DepartmentsSchedule < ActiveRecord::Base
	##--- Associations
	belongs_to :department
	has_many :employes_attendance, through: :employes
end
