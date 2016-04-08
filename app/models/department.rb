class Department < ActiveRecord::Base
	##--- Associations
	has_many :employes
	has_many :departments_schedules


	enum status: [:erased, :active, :inactive]


	##--- Validations
	validates :name, :presence => { message: "The department's name should be filled."}, length: {maximum: 50, too_long: "The department's name shouldn't have more than %{count} characters."}
	validates :arrival_tolerance, :presence => { message: "The department's arrival tolerance should be filled."}, length: {maximum: 10, too_long: "The department's arrival tolerance shouldn't have more than %{count} minutes."}
	validates :departure_tolerance, :presence => { message: "The department's departure tolerance should be filled." }, length: {maximum: 10, too_long: "The department's departure tolerance shouldn't have more than %{count} minutes."}
	

	##--- Scopes
	scope :currents, -> { where( "status != 0").order(" name ASC") }
	scope :actives, -> { where( :status => 1).order(" name ASC") }


end
