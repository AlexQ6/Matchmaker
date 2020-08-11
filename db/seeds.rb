# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    # Populate database with user and coach data 
    User.destroy_all
    User.create!([{ email: "user1@user.com", password: "123456" }])
    User.create!([{ email: "user2@user.com", password: "123456" }])
    User.create!([{ email: "user3@user.com", password: "123456" }])
    Coach.create!({business_name: "Academy one", business_mobile: "04000000", user_id: User.first})
    
