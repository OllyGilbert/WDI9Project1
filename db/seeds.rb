# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#locations
#classrooms
#courses
#programmes
#users

u1 = User.create!(name: 'Olly', role: 'student', password: 'password', email: 'olly@email.com')
u2 = User.create!(name: 'Mathilda', role: 'instructor', password: 'password', email: 'mathilda@email.com')
u3 = User.create!(name: 'Lexi', role: 'producer', password: 'password', email: 'lexi@email.com')

location1 = Location.create!(name: 'GA London @ White Bear Yard', address: '9 Back Hill', city: 'London')

programme1 = Programme.create!(name: 'WDI')
programme2 = Programme.create!(name: 'Digital Marketing')

classroom1 = Classroom.create!(name: 'Classroom 1', location_id: location1.id, capacity: 22)

course1 = Course.create!(name: 'WDI9', start_at: '22/09/2014', end_at: '12/12/2014', genre: "immersive", programme_id: programme1.id, classroom_id: classroom1.id, price: 8000, description: "General Assembly's flagship Web Development Immersive")

course2 = Course.create!(name: 'DM5', start_at: '26/08/2014', end_at: '11/14/2014', genre: "evening", programme_id: programme2.id, classroom_id: classroom1.id, price: 2400, description: "General Assembly's part time digital marketing course")

course1.instructors << u2
course1.students << u1
course1.producers << u3




