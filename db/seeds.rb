#encoding: UTF-8
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.delete_all
Role.create(name: 'Admin')
Role.create(name: 'Student')

User.delete_all
User.create(first_name: 'Cevdet',last_name: 'akaydin',password: 'cevdet1993',email: 'cevdetakaydin@gmail.com')
User.create(first_name: 'Emrullah',last_name: 'Sağlam',password: '12345678',email: 'emrullah.saglam@bil.omu.edu.tr')
User.create(first_name: 'Sinan',last_name: 'Şahin',password: '12345678',email: 'sinan.sahin@omu.edu.tr')
User.find_by_email('cevdetakaydin@gmail.com').roles << Role.find_by_name('Admin')
User.find_by_email('emrullah.saglam@bil.omu.edu.tr').roles << Role.find_by_name('Admin')
User.find_by_email('sinan.sahin@omu.edu.tr').roles << Role.find_by_name('Admin')

