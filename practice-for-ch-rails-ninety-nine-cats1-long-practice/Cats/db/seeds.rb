# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Cat.create!({name: 'morgie', birth_date: '1996/09/24', color: 'orange', sex: 'F', description: 'fun and snuggly'})
Cat.create!({name: 'chrissy', birth_date: '1997/10/02', color: 'grey', sex: 'F', description: 'warm and cuddly'})
