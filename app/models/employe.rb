class Employe < ActiveRecord::Base
	##--- Associations
	belongs_to :department
	has_many :departments_schedules, through: :departments

	enum status: [:erased, :active, :inactive]

	##--- Validations
	validates :first_name, :presence => { message: "The employe's name should be filled."}, length: {maximum: 50, too_long: "The employe's name shouldn't have more than %{count} characters."}
	validates :last_name, :presence => { message: "The employe's last name should be filled."}, length: {maximum: 50, too_long: "The employe's last name shouldn't have more than %{count} characters."}
	validates :phone, :presence => { message: "The employe's phone should be filled." }
	validates :address, :presence => { message: "The employe's address should be filled."}, length: { maximum: 255, too_long: "The employe's address shouldn't have more than %{count} characters." } 
	validates_uniqueness_of :barcode, message: "The employe's barcode should be unique. Please verify"


	##--- Scopes
	scope :currents, -> { where( "status != 0").order(" first_name ASC") }
	scope :actives, -> { where( :status => 1).order(" first_name ASC") }

	##--- Custome functions
	def full_name
		"#{self.first_name} #{last_name}"
	end
end
