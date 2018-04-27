# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.create(name: "Mayté", lastName: "Mejía", age: 24, gender: "Female")
Student.create(name: "Javier Simeón", lastName: "Mejía", age: 18, gender: "Male")
Student.create(name: "Karina", lastName: "Mejía", age: 26, gender: "Female")

Teacher.create(name: "Socorro", lastName: "Palacios", age: 47, gender: "Female")
Teacher.create(name: "Javier", lastName: "Mejía", age: 55, gender: "Male")

Matter.create(name: "Spanish", credits: 5)
Matter.create(name: "Chemestry", credits: 5)
