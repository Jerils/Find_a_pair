# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "hello"


user1 = User.create(email: "user@findpair.com", password: "abcd1234")

student1 = Student.create(name: "Job", bio: "Likes to code", image_url: "http://res.cloudinary.com/jeroen-ro/image/upload/v1496758393/Job_el5fcj.png", user: user1)

student2 = Student.create(name: "Henk", bio: "herro", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Helmut-Lotti.jpg/266px-Helmut-Lotti.jpg", user: user1)
student3 = Student.create(name: "Jaap", bio: "hallo", image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Helmut-Lotti.jpg/266px-Helmut-Lotti.jpg", user: user1)
