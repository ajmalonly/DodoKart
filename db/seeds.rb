# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning Database"
Ticket.destroy_all
Station.destroy_all
User.destroy_all
puts "Database Clean"

puts "Creating seeds"
user_one = User.create(email: "test1@gmail.com", password: "1234567")
user_two = User.create(email: "test2@gmail.com", password: "1234567")
user_three = User.create(email: "test3@gmail.com", password: "1234567")

Station.create(name:"Port Louis Victoria Central", latitude: -20.1624375, longitude: 57.4984168)
Station.create(name:"St Louis Station", latitude: -20.1809224, longitude: 57.476807)
Station.create(name:"Barkly Station", latitude: -20.2208957, longitude: 57.4584738)
Station.create(name:"Beau Bassin Station", latitude: -20.2267401, longitude: 57.4674423)
Station.create(name:"Vandermeersch Station", latitude: -20.2354432, longitude: 57.4731347)
Station.create(name:"Rose-Hill Central", latitude: -20.2418811, longitude: 57.4759577)
Station.create(name:"Belle Rose Station", latitude: -20.2535275, longitude: 57.4777101)
Station.create(name:"Quatre Bornes Central", latitude: -20.2653165, longitude: 57.4784026)
Station.create(name:"St Jean Station", latitude: -20.2617493, longitude: 57.4824836)
Station.create(name:"Trianon Station", latitude: -20.2610855, longitude: 57.489833)
Station.create(name:"Phoenix Station", latitude: -20.275049, longitude: 57.4965487)
Station.create(name:"Phoenix Mall Station", latitude: -20.2797464, longitude: 57.4971339)
Station.create(name:"Palmerston Station", latitude: -20.2850436, longitude: 57.4973445)
Station.create(name:"Vacoas Central", latitude: -20.2950453, longitude: 57.4933938)
Station.create(name:"Sadally Station", latitude: -20.3018021, longitude: 57.4958665)
Station.create(name:"Floreal Station", latitude: -20.3073556, longitude: 57.5072335)
Station.create(name:"Coromandel Station", latitude: -20.1836331, longitude: 57.4696472)
Station.create(name:"Curepipe Central", latitude: -20.3163468, longitude:57.5254854)

puts "Cleaning Database"
Itinerary.destroy_all
puts "Database Clean"
Itinerary.create(origin: "Port Louis Victoria Central", destination: "St Louis Station", price: 32, duration: 3)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Coromandel Station", price: 32, duration: 5)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Barkly Station", price: 38, duration: 10)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Beau Bassin Station", price: 38, duration: 15)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Vandermeersch Station", price: 38, duration: 21)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Rose-Hill Central", price: 38, duration: 24)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Belle Rose Station", price: 43, duration: 34)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Quatre Bornes Central", price: 43, duration: 36)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "St Jean Station", price: 47, duration: 36)
