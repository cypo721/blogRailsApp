# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# change to superadmin
['superuser', 'blogger', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

user = User.new
user.email = 'superuser@blogApp.com'
user.password = 'superuser'
user.password_confirmation = 'superuser'
user.confirmed_at = Time.now
user.add_role  :superuser
user.save!

user = User.new
user.email = 'tester@blogApp.com'
user.password = 'tester01'
user.password_confirmation = 'tester01'
user.confirmed_at = Time.now
user.add_role  :blogger
user.save!
