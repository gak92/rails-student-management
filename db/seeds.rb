# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student = Student.create(
  first_name: 'Ravi',
  last_name: 'Singh',
  email: 'ravi@abc.com'
)

20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: "Student_#{i+1}",
    last_name: "Lname_#{i+1}",
    email: "student_#{i+1}@abc.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Pending content")
  student.blogs.create(title: "Dummy blog for student #{student.id}", content: "Pending content")
end

Course.create(name: "Ruby on Rails", description: "It's a bootcamp on Ruby on Rails")
Course.create(name: "React JS", description: "It's a bootcamp on Reac JS and Redux")
Course.create(name: "Node JS", description: "It's a bootcamp on Node JS")
Course.create(name: "Python", description: "It's a bootcamp on Python and framework")
Course.create(name: "HTML/CSS", description: "It's a bootcamp on HTML and CSS")

Project.create(name: 'DriverApp', description: 'Driver app')
Project.create(name: 'Rails Projec', description: 'Build Blog on Ruby on Rails')
Project.create(name: 'Javascript', description: 'Javascriipt plain projec')

StudentProect.create(student_id: 1, project_id: 1, submission_date: Date.today+30.days)
