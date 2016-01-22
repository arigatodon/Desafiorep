# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Task.destroy_all
Proyect.destroy_all
User.destroy_all


proyects = []
tasks = []
users = []
users << User.create(
  email: 'basic@basic.com',
  password: 'password'
)
users << User.create(
  email: 'venegas.igor@gmail.com',
  password: '89982173'
)

#Proyect(, created_at: datetime, updated_at: datetime, name: string)
(1..50).each do |m|
  proyects << Proyect.create(
    user: users[rand(users.length)],
    name: Faker::Name.name
   )
end

(1..100).each do |r|
  tasks << Task.create(
    name: Faker::Name.name,
    state:rand(0..2),
    user: users[rand(users.length)],
    proyect: proyects[rand(proyects.length)]
  )
end

#Task(id: integer, name: string, state: integer, user_id: integer, proyect_id: integer, created_at: datetime, updated_at: datetime)