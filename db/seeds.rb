# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##-- Add user admin 
# users = User.create(userid:'textileadmin', first_name: 'Admin', last_name: ' TextileCO ', email: 'admin@textileco.com', password: '12345678', password_confirmation: '12345678')


##-- Add some departments
3.times do |dep|
	department = Department.create(:name => Faker::Commerce.department, 
		:arrival_tolerance => Faker::Number.between(0, 6),
		 :departure_tolerance => Faker::Number.between(0, 6))

	##-- Add info for employes
	10.times do |emp|
		employe = Employe.create(:first_name => Faker::Name.first_name, :last_name=> Faker::Name.last_name,  :address => Faker::Address.street_address, :phone => Faker::PhoneNumber.cell_phone, :barcode => Faker::Code.ean, :department_id => department.id )
	end 
end



