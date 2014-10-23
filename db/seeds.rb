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

p1 = User.create!(name: 'Lexi', role: 'producer', password: 'password', email: 'lexi@email.com')

i1 = User.create!(name: 'Gerry Mathe', role: 'instructor', password: 'password', email: 'gerry@email.com')
i2 = User.create!(name: 'Mathilda Thompason', role: 'instructor', password: 'password', email: 'mathilda@email.com')
i3 = User.create!(name: 'Tobias Hale', role: 'instructor', password: 'password', email: 'tobias@email.com')
i4 = User.create!(name: 'David Rees', role: 'instructor', password: 'password', email: 'dave@email.com')

s1 = User.create!(name: 'Olly Gilbert', role: 'student', password: 'password', email: 'olly@email.com')
s2 = User.create!(name: 'Ben Cranwell', role: 'student', password: 'password', email: 'ben@email.com')
s3 = User.create!(name: 'Beth Houlgrave', role: 'student', password: 'password', email: 'beth@email.com')
s4 = User.create!(name: 'Dominic Hacking', role: 'student', password: 'password', email: 'dom@email.com')
s5 = User.create!(name: 'George Hattrell', role: 'student', password: 'password', email: 'george@email.com')
s6 = User.create!(name: 'Ian Denty', role: 'student', password: 'password', email: 'ian@email.com')
s7 = User.create!(name: 'Ife Runsewe', role: 'student', password: 'password', email: 'ife@email.com')
s8 = User.create!(name: 'Jacob Schoo', role: 'student', password: 'password', email: 'jacob@email.com')
s9 = User.create!(name: 'Jody Kingzett', role: 'student', password: 'password', email: 'jody@email.com')
s10 = User.create!(name: 'Laura Ambrose', role: 'student', password: 'password', email: 'laura@email.com')
s11 = User.create!(name: 'Lulu Marshall', role: 'student', password: 'password', email: 'lulu@email.com')
s12 = User.create!(name: 'Nina Schrider', role: 'student', password: 'password', email: 'nina@email.com')
s13 = User.create!(name: 'Ben Sunderland', role: 'student', password: 'password', email: 'bens@email.com')
s14 = User.create!(name: 'David Wilkinson', role: 'student', password: 'password', email: 'daves@email.com')

location1 = Location.create!(name: 'GA London @ White Bear Yard', address: '9 Back Hill', city: 'London')
location2 = Location.create!(name: 'GA New York City West', address: '10 East 21st Street', city: 'New York')
location3 = Location.create!(name: 'GA-SF', address: '501 Folsom', city: 'San Franciso')

programme1 = Programme.create!(name: 'WDI', description: "General Assembly's flagship web development immersive")
programme2 = Programme.create!(name: 'Digital Marketing', description: "General Assembly's part time digital marketing course")

classroom1 = Classroom.create!(name: 'Classroom 1', location_id: location1.id, capacity: 22)

classroom2 = Classroom.create!(name: 'Classroom 2', location_id: location1.id, capacity: 22)

course1 = Course.create!(name: 'WDI9', start_at: '22/09/2014', end_at: '12/12/2014', genre: "immersive", programme_id: programme1.id, classroom_id: classroom1.id, price: 8000, description: "General Assembly's 9th Web Development Immersive in London")

course2 = Course.create!(name: 'DM5', start_at: '26/08/2014', end_at: '11/14/2014', genre: "evening", programme_id: programme2.id, classroom_id: classroom2.id, price: 2400, description: "General Assembly's part time digital marketing course")


course1.instructors << [i1, i2, i3, i4]
course1.students << [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14]
course1.producers << p1




