# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Food.create(name: "Rendang", price: 30000, description: "Rendang adalah salah satu makanan khas Indonesia dari wilayah Sumatera Barat")
Food.create(name: "Treacle tart", price: 50000, description: "Treacle tart adalah makanan penutup tradisional Inggris")
Food.create(name: "Fettuccine Alfredo", price: 80000, description: "Fettuccine Alfredo adalah hidangan pasta Italia dari fettuccine segar yang ditaburi mentega dan keju Parmesan")

Category.create(name: 'Beef')
Category.create(name: 'Dessert')
Category.create(name: 'Pasta')