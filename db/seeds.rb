# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Niklas = User.create(first_name: "Niklas", email: 'niklas@test.com', password: '123456')
Niklas.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/Niklas.png')), filename: 'Niklas.png', content_type: 'image/png')

Philipp = User.create(first_name: "Philipp", email: 'philipp@test.com', password: '123456')
Philipp.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/Philipp.png')), filename: 'Philipp.png', content_type: 'image/png')

Dennis = User.create(first_name: "Dennis", email: 'dennis@test.com', password: '123456')
Dennis.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/Dennis.png')), filename: 'Dennis.png', content_type: 'image/png')

Susann = User.create(first_name: "Susann", email: 'susann@test.com', password: '123456')
Susann.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/Susann.png')), filename: 'Susann.png', content_type: 'image/png')

Benni = User.create(first_name: "Benni", email: 'benni@test.com', password: '123456')
Benni.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/Benni.png')), filename: 'Benni.png', content_type: 'image/png')