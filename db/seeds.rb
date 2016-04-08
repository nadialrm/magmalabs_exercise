# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##-- Add user admin 
users = User.create(userid:'textileadmin', first_name: 'Admin', last_name: ' TextileCO ', email: 'admin@textileco.com', password: '12345678', password_confirmation: '12345678')


##-- Add some departments
3.times do |d|
	department = Department.create!(:name => Faker::Commerce.department, 
		:arrival_tolerance => Faker::Number.between(0, 6),
		 :departure_tolerance => Faker::Number.between(0, 6))

	##-- Schedule department....
	dep_schedule = DepartmentsSchedule.create!(:department_id => department.id,
		:arrival => '09:00', 
		:departure => '18:00',
		:mon =>'true',
		:tue =>'true',
		:wed =>'true',
		:thu =>'true',
		:fri =>'true')

	##-- Add fake info for employes
	15.times do |e|
		employe = Employe.create!(:first_name => Faker::Name.first_name, 
			:last_name=> Faker::Name.last_name,  
			:address => Faker::Address.street_address, 
			:phone => Faker::PhoneNumber.cell_phone, 
			:barcode => Faker::Code.ean, 
			:department_id => department.id )

		
		# 5.time do |a| 
		# 	employee_attend = EmployesAttendance.create!(
		# 	:employe_id => employe.id,
		# 	:departments_schedule_id => dep_schedule.id,
		# 	:arrival => Faker::Time.between

		# 	)
		# end 
	end 
end



