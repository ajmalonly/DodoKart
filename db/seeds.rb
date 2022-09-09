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

Station.create(name: "Port Louis Victoria Central", latitude: -20.1624375, longitude: 57.4984168)
Station.create(name: "St Louis Station", latitude: -20.1809224, longitude: 57.476807)
Station.create(name: "Coromandel Station", latitude: -20.1836331, longitude: 57.4696472)
Station.create(name: "Barkly Station", latitude: -20.2208957, longitude: 57.4584738)
Station.create(name: "Beau Bassin Station", latitude: -20.2267401, longitude: 57.4674423)
Station.create(name: "Vandermeersch Station", latitude: -20.2354432, longitude: 57.4731347)
Station.create(name: "Rose-Hill Central", latitude: -20.2418811, longitude: 57.4759577)
Station.create(name: "Belle Rose Station", latitude: -20.2535275, longitude: 57.4777101)
Station.create(name: "Quatre Bornes Central", latitude: -20.2653165, longitude: 57.4784026)
Station.create(name: "St Jean Station", latitude: -20.2617493, longitude: 57.4824836)
Station.create(name: "Trianon Station", latitude: -20.2610855, longitude: 57.489833)
Station.create(name: "Phoenix Station", latitude: -20.275049, longitude: 57.4965487)
Station.create(name: "Phoenix Mall Station", latitude: -20.2797464, longitude: 57.4971339)
Station.create(name: "Palmerston Station", latitude: -20.2850436, longitude: 57.4973445)
Station.create(name: "Vacoas Central", latitude: -20.2950453, longitude: 57.4933938)
Station.create(name: "Sadally Station", latitude: -20.3018021, longitude: 57.4958665)
Station.create(name: "Floreal Station", latitude: -20.3073556, longitude: 57.5072335)
Station.create(name: "Curepipe Central", latitude: -20.3163468, longitude: 57.5254854)

puts "Cleaning Database"
Itinerary.destroy_all
puts "Database Clean"

Itinerary.create(origin: "Port Louis Victoria Central", destination: "St Louis Station", price: 47, duration: 2)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Coromandel Station", price: 47, duration: 2)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Barkly Station", price: 38, duration: 4)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Beau Bassin Station", price: 38, duration: 5)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Vandermeersch Station", price: 32, duration: 4)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Rose-Hill Central", price: 32, duration: 3)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Belle Rose Station", price: 32, duration: 9)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Quatre Bornes Central", price: 32, duration: 12)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "St Jean Station", price: 32, duration: 11)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Trianon Station", price: 32, duration: 15)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Phoenix Station", price: 32, duration: 18)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Phoenix Station Mall", price: 32, duration: 17)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Palmerston Station", price: 32, duration: 17)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Vacoas Central", price: 32, duration: 16)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Sadally Station", price: 32, duration: 16)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Port Louis Victoria Central", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "St Louis Station", destination: "Port Louis Victoria Central", price: 47, duration: 2)
Itinerary.create(origin: "St Louis Station", destination: "Coromandel Station", price: 47, duration: 2)
Itinerary.create(origin: "St Louis Station", destination: "Barkly Station", price: 38, duration: 7)
Itinerary.create(origin: "St Louis Station", destination: "Beau Bassin Station", price: 32, duration: 10)
Itinerary.create(origin: "St Louis Station", destination: "Vandermeersch Station", price: 32, duration: 10)
Itinerary.create(origin: "St Louis Station", destination: "Rose-Hill Central", price: 32, duration: 12)
Itinerary.create(origin: "St Louis Station", destination: "Belle Rose Station", price: 32, duration: 13)
Itinerary.create(origin: "St Louis Station", destination: "Quatre Bornes Central", price: 32, duration: 12)
Itinerary.create(origin: "St Louis Station", destination: "St Jean Station", price: 32, duration: 11)
Itinerary.create(origin: "St Louis Station", destination: "Trianon Station", price: 32, duration: 14)
Itinerary.create(origin: "St Louis Station", destination: "Phoenix Station", price: 32, duration: 16)
Itinerary.create(origin: "St Louis Station", destination: "Phoenix Station Mall", price: 32, duration: 16)
Itinerary.create(origin: "St Louis Station", destination: "Palmerston Station", price: 32, duration: 13)
Itinerary.create(origin: "St Louis Station", destination: "Vacoas Central", price: 32, duration: 11)
Itinerary.create(origin: "St Louis Station", destination: "Sadally Station", price: 32, duration: 11)
Itinerary.create(origin: "St Louis Station", destination: "Floreal Station", price: 32, duration: 14)
Itinerary.create(origin: "St Louis Station", destination: "Curepipe Central", price: 32, duration: 15)

Itinerary.create(origin: "Coromandel Station", destination: "Port Louis Victoria Central", price: 47, duration: 2)
Itinerary.create(origin: "Coromandel Station", destination: "St Louis Station", price: 47, duration: 2)
Itinerary.create(origin: "Coromandel Station", destination: "Barkly Station", price: 38, duration: 7)
Itinerary.create(origin: "Coromandel Station", destination: "Beau Bassin Station", price: 32, duration: 10)
Itinerary.create(origin: "Coromandel Station", destination: "Vandermeersch Station", price: 32, duration: 4)
Itinerary.create(origin: "Coromandel Station", destination: "Rose-Hill Central", price: 32, duration: 10)
Itinerary.create(origin: "Coromandel Station", destination: "Belle Rose Station", price: 32, duration: 11)
Itinerary.create(origin: "Coromandel Station", destination: "Quatre Bornes Central", price: 32, duration: 12)
Itinerary.create(origin: "Coromandel Station", destination: "St Jean Station", price: 32, duration: 10)
Itinerary.create(origin: "Coromandel Station", destination: "Trianon Station", price: 32, duration: 10)
Itinerary.create(origin: "Coromandel Station", destination: "Phoenix Station", price: 32, duration: 12)
Itinerary.create(origin: "Coromandel Station", destination: "Phoenix Station Mall", price: 32, duration: 12)
Itinerary.create(origin: "Coromandel Station", destination: "Palmerston Station", price: 32, duration: 6)
Itinerary.create(origin: "Coromandel Station", destination: "Vacoas Central", price: 32, duration: 8)
Itinerary.create(origin: "Coromandel Station", destination: "Sadally Station", price: 32, duration: 8)
Itinerary.create(origin: "Coromandel Station", destination: "Floreal Station", price: 32, duration: 15)
Itinerary.create(origin: "Coromandel Station", destination: "Curepipe Central", price: 32, duration: 16)

Itinerary.create(origin: "Barkly Station", destination: "Port Louis Victoria Central", price: 47, duration: 7)
Itinerary.create(origin: "Barkly Station", destination: "St Louis Station", price: 47, duration: 6)
Itinerary.create(origin: "Barkly Station", destination: "Coromandel Station", price: 47, duration: 3)
Itinerary.create(origin: "Barkly Station", destination: "Beau Bassin Station", price: 32, duration: 2)
Itinerary.create(origin: "Barkly Station", destination: "Vandermeersch Station", price: 32, duration: 2)
Itinerary.create(origin: "Barkly Station", destination: "Rose-Hill Central", price: 32, duration: 4)
Itinerary.create(origin: "Barkly Station", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "Barkly Station", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Barkly Station", destination: "St Jean Station", price: 32, duration: 7)
Itinerary.create(origin: "Barkly Station", destination: "Trianon Station", price: 32, duration: 9)
Itinerary.create(origin: "Barkly Station", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Barkly Station", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Barkly Station", destination: "Palmerston Station", price: 32, duration: 4)
Itinerary.create(origin: "Barkly Station", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "Barkly Station", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "Barkly Station", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Barkly Station", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Beau Bassin Station", destination: "Port Louis Victoria Central", price: 47, duration: 7)
Itinerary.create(origin: "Beau Bassin Station", destination: "St Louis Station", price: 47, duration: 6)
Itinerary.create(origin: "Beau Bassin Station", destination: "Coromandel Station", price: 47, duration: 3)
Itinerary.create(origin: "Beau Bassin Station", destination: "Barkly Station", price: 38, duration: 2)
Itinerary.create(origin: "Beau Bassin Station", destination: "Vandermeersch Station", price: 32, duration: 2)
Itinerary.create(origin: "Beau Bassin Station", destination: "Rose-Hill Central", price: 32, duration: 4)
Itinerary.create(origin: "Beau Bassin Station", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "Beau Bassin Station", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Beau Bassin Station", destination: "St Jean Station", price: 32, duration: 7)
Itinerary.create(origin: "Beau Bassin Station", destination: "Trianon Station", price: 32, duration: 9)
Itinerary.create(origin: "Beau Bassin Station", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Beau Bassin Station", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Beau Bassin Station", destination: "Palmerston Station", price: 32, duration: 4)
Itinerary.create(origin: "Beau Bassin Station", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "Beau Bassin Station", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "Beau Bassin Station", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Beau Bassin Station", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Vandermeersch Station", destination: "Port Louis Victoria Central", price: 47, duration: 7)
Itinerary.create(origin: "Vandermeersch Station", destination: "St Louis Station", price: 47, duration: 6)
Itinerary.create(origin: "Vandermeersch Station", destination: "Coromandel Station", price: 47, duration: 3)
Itinerary.create(origin: "Vandermeersch Station", destination: "Barkly Station", price: 38, duration: 2)
Itinerary.create(origin: "Vandermeersch Station", destination: "Beau Bassin Station", price: 32, duration: 2)
Itinerary.create(origin: "Vandermeersch Station", destination: "Rose-Hill Central", price: 32, duration: 4)
Itinerary.create(origin: "Vandermeersch Station", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "Vandermeersch Station", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Vandermeersch Station", destination: "St Jean Station", price: 32, duration: 7)
Itinerary.create(origin: "Vandermeersch Station", destination: "Trianon Station", price: 32, duration: 9)
Itinerary.create(origin: "Vandermeersch Station", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Vandermeersch Station", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Vandermeersch Station", destination: "Palmerston Station", price: 32, duration: 4)
Itinerary.create(origin: "Vandermeersch Station", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "Vandermeersch Station", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "Vandermeersch Station", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Vandermeersch Station", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Rose-Hill Central", destination: "Port Louis Victoria Central", price: 47, duration: 8)
Itinerary.create(origin: "Rose-Hill Central", destination: "St Louis Station", price: 47, duration: 7)
Itinerary.create(origin: "Rose-Hill Central", destination: "Coromandel Station", price: 47, duration: 5)
Itinerary.create(origin: "Rose-Hill Central", destination: "Barkly Station", price: 38, duration: 2)
Itinerary.create(origin: "Rose-Hill Central", destination: "Beau Bassin Station", price: 32, duration: 4)
Itinerary.create(origin: "Rose-Hill Central", destination: "Vandermeersch Station", price: 32, duration: 3)
Itinerary.create(origin: "Rose-Hill Central", destination: "Belle Rose Station", price: 32, duration: 2)
Itinerary.create(origin: "Rose-Hill Central", destination: "Quatre Bornes Central", price: 32, duration: 5)
Itinerary.create(origin: "Rose-Hill Central", destination: "St Jean Station", price: 32, duration: 5)
Itinerary.create(origin: "Rose-Hill Central", destination: "Trianon Station", price: 32, duration: 15)
Itinerary.create(origin: "Rose-Hill Central", destination: "Phoenix Station", price: 32, duration: 16)
Itinerary.create(origin: "Rose-Hill Central", destination: "Phoenix Station Mall", price: 32, duration: 16)
Itinerary.create(origin: "Rose-Hill Central", destination: "Palmerston Station", price: 32, duration: 4)
Itinerary.create(origin: "Rose-Hill Central", destination: "Vacoas Central", price: 32, duration: 2)
Itinerary.create(origin: "Rose-Hill Central", destination: "Sadally Station", price: 32, duration: 2)
Itinerary.create(origin: "Rose-Hill Central", destination: "Floreal Station", price: 32, duration: 6)
Itinerary.create(origin: "Rose-Hill Central", destination: "Curepipe Central", price: 32, duration: 7)

Itinerary.create(origin: "Belle Rose Station", destination: "Port Louis Victoria Central", price: 47, duration: 8)
Itinerary.create(origin: "Belle Rose Station", destination: "St Louis Station", price: 47, duration: 7)
Itinerary.create(origin: "Belle Rose Station", destination: "Coromandel Station", price: 47, duration: 5)
Itinerary.create(origin: "Belle Rose Station", destination: "Barkly Station", price: 38, duration: 2)
Itinerary.create(origin: "Belle Rose Station", destination: "Beau Bassin Station", price: 32, duration: 4)
Itinerary.create(origin: "Belle Rose Station", destination: "Vandermeersch Station", price: 32, duration: 3)
Itinerary.create(origin: "Belle Rose Station", destination: "Rose-Hill Central", price: 32, duration: 2)
Itinerary.create(origin: "Belle Rose Station", destination: "Quatre Bornes Central", price: 32, duration: 5)
Itinerary.create(origin: "Belle Rose Station", destination: "St Jean Station", price: 32, duration: 5)
Itinerary.create(origin: "Belle Rose Station", destination: "Trianon Station", price: 32, duration: 15)
Itinerary.create(origin: "Belle Rose Station", destination: "Phoenix Station", price: 32, duration: 16)
Itinerary.create(origin: "Belle Rose Station", destination: "Phoenix Station Mall", price: 32, duration: 16)
Itinerary.create(origin: "Belle Rose Station", destination: "Palmerston Station", price: 32, duration: 4)
Itinerary.create(origin: "Belle Rose Station", destination: "Vacoas Central", price: 32, duration: 2)
Itinerary.create(origin: "Belle Rose Station", destination: "Sadally Station", price: 32, duration: 2)
Itinerary.create(origin: "Belle Rose Station", destination: "Floreal Station", price: 32, duration: 6)
Itinerary.create(origin: "Belle Rose Station", destination: "Curepipe Central", price: 32, duration: 6)

Itinerary.create(origin: "Quatre Bornes Central", destination: "Port Louis Victoria Central", price: 47, duration: 10)
Itinerary.create(origin: "Quatre Bornes Central", destination: "St Louis Station", price: 47, duration: 9)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Coromandel Station", price: 47, duration: 6)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Barkly Station", price: 38, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Beau Bassin Station", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Vandermeersch Station", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Rose-Hill Central", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "St Jean Station", price: 32, duration: 1)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Trianon Station", price: 32, duration: 2)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Phoenix Station", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Phoenix Station Mall", price: 32, duration: 5)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Palmerston Station", price: 32, duration: 3)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Floreal Station", price: 32, duration: 10)
Itinerary.create(origin: "Quatre Bornes Central", destination: "Curepipe Central", price: 32, duration: 11)

Itinerary.create(origin: "St Jean Station", destination: "Port Louis Victoria Central", price: 47, duration: 10)
Itinerary.create(origin: "St Jean Station", destination: "St Louis Station", price: 47, duration: 9)
Itinerary.create(origin: "St Jean Station", destination: "Coromandel Station", price: 47, duration: 6)
Itinerary.create(origin: "St Jean Station", destination: "Barkly Station", price: 38, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Beau Bassin Station", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Vandermeersch Station", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Rose-Hill Central", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Quatre Bornes Central", price: 32, duration: 1)
Itinerary.create(origin: "St Jean Station", destination: "Trianon Station", price: 32, duration: 2)
Itinerary.create(origin: "St Jean Station", destination: "Phoenix Station", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Phoenix Station Mall", price: 32, duration: 5)
Itinerary.create(origin: "St Jean Station", destination: "Palmerston Station", price: 32, duration: 3)
Itinerary.create(origin: "St Jean Station", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "St Jean Station", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "St Jean Station", destination: "Floreal Station", price: 32, duration: 10)
Itinerary.create(origin: "St Jean Station", destination: "Curepipe Central", price: 32, duration: 11)

Itinerary.create(origin: "Trianon Station", destination: "Port Louis Victoria Central", price: 47, duration: 15)
Itinerary.create(origin: "Trianon Station", destination: "St Louis Station", price: 47, duration: 13)
Itinerary.create(origin: "Trianon Station", destination: "Coromandel Station", price: 47, duration: 11)
Itinerary.create(origin: "Trianon Station", destination: "Barkly Station", price: 38, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Beau Bassin Station", price: 32, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Vandermeersch Station", price: 32, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Rose-Hill Central", price: 32, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Belle Rose Station", price: 32, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Quatre Bornes Central", price: 32, duration: 2)
Itinerary.create(origin: "Trianon Station", destination: "St Jean Station", price: 32, duration: 2)
Itinerary.create(origin: "Trianon Station", destination: "Phoenix Station", price: 32, duration: 5)
Itinerary.create(origin: "Trianon Station", destination: "Phoenix Station Mall", price: 32, duration: 5)
Itinerary.create(origin: "Trianon Station", destination: "Palmerston Station", price: 32, duration: 7)
Itinerary.create(origin: "Trianon Station", destination: "Vacoas Central", price: 32, duration: 9)
Itinerary.create(origin: "Trianon Station", destination: "Sadally Station", price: 32, duration: 9)
Itinerary.create(origin: "Trianon Station", destination: "Floreal Station", price: 32, duration: 13)
Itinerary.create(origin: "Trianon Station", destination: "Curepipe Central", price: 32, duration: 15)

Itinerary.create(origin: "Phoenix Station", destination: "Port Louis Victoria Central", price: 47, duration: 15)
Itinerary.create(origin: "Phoenix Station", destination: "St Louis Station", price: 47, duration: 15)
Itinerary.create(origin: "Phoenix Station", destination: "Coromandel Station", price: 47, duration: 12)
Itinerary.create(origin: "Phoenix Station", destination: "Barkly Station", price: 38, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Beau Bassin Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Vandermeersch Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Rose-Hill Central", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Belle Rose Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Quatre Bornes Central", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station", destination: "St Jean Station", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station", destination: "Trianon Station", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station", destination: "Phoenix Station Mall", price: 32, duration: 1)
Itinerary.create(origin: "Phoenix Station", destination: "Palmerston Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Vacoas Central", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Sadally Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station", destination: "Floreal Station", price: 32, duration: 7)
Itinerary.create(origin: "Phoenix Station", destination: "Curepipe Central", price: 32, duration: 8)

Itinerary.create(origin: "Phoenix Station Mall", destination: "Port Louis Victoria Central", price: 47, duration: 15)
Itinerary.create(origin: "Phoenix Station Mall", destination: "St Louis Station", price: 47, duration: 15)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Coromandel Station", price: 47, duration: 12)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Barkly Station", price: 38, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Beau Bassin Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Vandermeersch Station", pprice: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Rose-Hill Central", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Belle Rose Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Quatre Bornes Central", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station Mall", destination: "St Jean Station", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Trianon Station", price: 32, duration: 5)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Phoenix Station", price: 32, duration: 1)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Palmerston Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Vacoas Central", price: 32, duration: 8))
Itinerary.create(origin: "Phoenix Station Mall", destination: "Sadally Station", price: 32, duration: 8)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Floreal Station", price: 32, duration: 7)
Itinerary.create(origin: "Phoenix Station Mall", destination: "Curepipe Central", price: 32, duration: 8)

Itinerary.create(origin: "Palmerston Station", destination: "Port Louis Victoria Central", price: 47, duration: 7)
Itinerary.create(origin: "Palmerston Station", destination: "St Louis Station", price: 47, duration: 6)
Itinerary.create(origin: "Palmerston Station", destination: "Coromandel Station", price: 47, duration: 3)
Itinerary.create(origin: "Palmerston Station", destination: "Barkly Station", price: 38, duration: 2)
Itinerary.create(origin: "Palmerston Station", destination: "Beau Bassin Station", price: 32, duration: 2)
Itinerary.create(origin: "Palmerston Station", destination: "Vandermeersch Station", price: 32, duration: 4)
Itinerary.create(origin: "Palmerston Station", destination: "Rose-Hill Central", price: 32, duration: 4)
Itinerary.create(origin: "Palmerston Station", destination: "Belle Rose Station", price: 32, duration: 5)
Itinerary.create(origin: "Palmerston Station", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Palmerston Station", destination: "St Jean Station", price: 32, duration: 6)
Itinerary.create(origin: "Palmerston Station", destination: "Trianon Station", price: 32, duration: 9)
Itinerary.create(origin: "Palmerston Station", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Palmerston Station", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Palmerston Station", destination: "Vacoas Central", price: 32, duration: 3)
Itinerary.create(origin: "Palmerston Station", destination: "Sadally Station", price: 32, duration: 3)
Itinerary.create(origin: "Palmerston Station", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Palmerston Station", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Vacoas Central", destination: "Port Louis Victoria Central", price: 47, duration: 10)
Itinerary.create(origin: "Vacoas Central", destination: "St Louis Station", price: 47, duration: 9)
Itinerary.create(origin: "Vacoas Central", destination: "Coromandel Station", price: 47, duration: 7)
Itinerary.create(origin: "Vacoas Central", destination: "Barkly Station", price: 38, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Beau Bassin Station", price: 32, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Vandermeersch Station", price: 32, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Rose-Hill Central", price: 32, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Belle Rose Station", price: 32, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Vacoas Central", destination: "St Jean Station", price: 32, duration: 6)
Itinerary.create(origin: "Vacoas Central", destination: "Trianon Station", price: 32, duration: 8)
Itinerary.create(origin: "Vacoas Central", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Vacoas Central", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Vacoas Central", destination: "Palmerston Station", price: 32, duration: 3)
Itinerary.create(origin: "Vacoas Central", destination: "Sadally Station", price: 32, duration: 1)
Itinerary.create(origin: "Vacoas Central", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Vacoas Central", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Sadally Station", destination: "Port Louis Victoria Central", price: 47, duration: 10)
Itinerary.create(origin: "Sadally Station", destination: "St Louis Station", price: 47, duration: 9)
Itinerary.create(origin: "Sadally Station", destination: "Coromandel Station", price: 47, duration: 7)
Itinerary.create(origin: "Sadally Station", destination: "Barkly Station", price: 38, duration: 3)
Itinerary.create(origin: "Sadally Station", destination: "Beau Bassin Station", price: 32, duration: 3)
Itinerary.create(origin: "Sadally Station", destination: "Vandermeersch Station", price: 32, duration: 3)
Itinerary.create(origin: "Sadally Station", destination: "Rose-Hill Central", price: 32, duration: 3)
Itinerary.create(origin: "Sadally Station", destination: "Belle Rose Station", price: 32, duration: 6)
Itinerary.create(origin: "Sadally Station", destination: "Quatre Bornes Central", price: 32, duration: 6)
Itinerary.create(origin: "Sadally Station", destination: "St Jean Station", price: 32, duration: 6)
Itinerary.create(origin: "Sadally Station", destination: "Trianon Station", price: 32, duration: 8)
Itinerary.create(origin: "Sadally Station", destination: "Phoenix Station", price: 32, duration: 10)
Itinerary.create(origin: "Sadally Station", destination: "Phoenix Station Mall", price: 32, duration: 10)
Itinerary.create(origin: "Sadally Station", destination: "Palmerston Station", price: 32, duration: 3)
Itinerary.create(origin: "Sadally Station", destination: "Vacoas Central", price: 32, duration: 1)
Itinerary.create(origin: "Sadally Station", destination: "Floreal Station", price: 32, duration: 9)
Itinerary.create(origin: "Sadally Station", destination: "Curepipe Central", price: 32, duration: 10)

Itinerary.create(origin: "Floreal Station", destination: "Port Louis Victoria Central", price: 47, duration: 20)
Itinerary.create(origin: "Floreal Station", destination: "St Louis Station", price: 47, duration: 20)
Itinerary.create(origin: "Floreal Station", destination: "Coromandel Station", price: 47, duration: 20)
Itinerary.create(origin: "Floreal Station", destination: "Barkly Station", price: 38, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "Beau Bassin Station", price: 32, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "Vandermeersch Station", price: 32, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "Rose-Hill Central", price: 32, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "Belle Rose Station", price: 32, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "Quatre Bornes Central", price: 32, duration: 10)
Itinerary.create(origin: "Floreal Station", destination: "St Jean Station", price: 32, duration: 11)
Itinerary.create(origin: "Floreal Station", destination: "Trianon Station", price: 32, duration: 15)
Itinerary.create(origin: "Floreal Station", destination: "Phoenix Station", price: 32, duration: 16)
Itinerary.create(origin: "Floreal Station", destination: "Phoenix Station Mall", price: 32, duration: 16)
Itinerary.create(origin: "Floreal Station", destination: "Palmerston Station", price: 32, duration: 5)
Itinerary.create(origin: "Floreal Station", destination: "Vacoas Central", price: 32, duration: 6)
Itinerary.create(origin: "Floreal Station", destination: "Sadally Station", price: 32, duration: 7)
Itinerary.create(origin: "Floreal Station", destination: "Curepipe Central", price: 32, duration: 2)

Itinerary.create(origin: "Curepipe Central", destination: "Port Louis Victoria Central", price: 47, duration: 20)
Itinerary.create(origin: "Curepipe Central", destination: "St Louis Station", price: 47, duration: 20)
Itinerary.create(origin: "Curepipe Central", destination: "Coromandel Station", price: 47, duration: 20)
Itinerary.create(origin: "Curepipe Central", destination: "Barkly Station", price: 38, duration: 10)
Itinerary.create(origin: "Curepipe Central", destination: "Beau Bassin Station", price: 32, duration: 10)
Itinerary.create(origin: "Curepipe Central", destination: "Vandermeersch Station", price: 32, duration: 10)
Itinerary.create(origin: "Curepipe Central", destination: "Rose-Hill Central", price: 32, duration: 10)
Itinerary.create(origin: "Curepipe Central", destination: "Belle Rose Station", price: 32, duration: 10)
Itinerary.create(origin: "Curepipe Central", destination: "Quatre Bornes Central", price: 32, duration: 12)
Itinerary.create(origin: "Curepipe Central", destination: "St Jean Station", price: 32, duration: 11)
Itinerary.create(origin: "Curepipe Central", destination: "Trianon Station", price: 32, duration: 15)
Itinerary.create(origin: "Curepipe Central", destination: "Phoenix Station", price: 32, duration: 16)
Itinerary.create(origin: "Curepipe Central", destination: "Phoenix Station Mall", price: 32, duration: 16)
Itinerary.create(origin: "Curepipe Central", destination: "Palmerston Station", price: 32, duration: 5)
Itinerary.create(origin: "Curepipe Central", destination: "Vacoas Central", price: 32, duration: 6)
Itinerary.create(origin: "Curepipe Central", destination: "Sadally Station", price: 32, duration: 7)
Itinerary.create(origin: "Curepipe Central", destination: "Floreal Station", price: 32, duration: 2)

puts "Itinerary created"
