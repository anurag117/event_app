# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "admin1", gender: "male", phone_number: "1111111101", email_id: "admin1@gmail.com", password: "admin1", password_confirmation: "admin1", admin: true)
User.create(name: "admin2", gender: "male", phone_number: "1111111102", email_id: "admin2@gmail.com", password: "admin2", password_confirmation: "admin2", admin: true)

User.create(name: "user1", gender: "male", phone_number: "9999999901", email_id: "user1@gmail.com", password: "user1", password_confirmation: "user1", admin: false)
User.create(name: "user2", gender: "male", phone_number: "9999999902", email_id: "user2@gmail.com", password: "user2", password_confirmation: "user2", admin: false)
User.create(name: "user3", gender: "female", phone_number: "9999999903", email_id: "user3@gmail.com", password: "user3", password_confirmation: "user3", admin: false)
User.create(name: "user4", gender: "female", phone_number: "9999999904", email_id: "user4@gmail.com", password: "user4", password_confirmation: "user4", admin: false)

Event.create(title: "event1", description: "event description1", ticket_fee: 250.0, start_time: Time.current + 2.days, duration: 2.5)
Event.create(title: "event2", description: "event description2", ticket_fee: 350.0, start_time: Time.current + 4.days, duration: 4)
Event.create(title: "event3", description: "event description3", ticket_fee: 200.0, start_time: Time.current + 20.minutes, duration: 5.5)
Event.create(title: "event4", description: "event description4", ticket_fee: 250.0, start_time: Time.current + 10.minutes, duration: 2.5)
Event.create(title: "event5", description: "event description5", ticket_fee: 300.0, start_time: Time.current + 1.days, duration: 2.5)