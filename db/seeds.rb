# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Game.create(name: "Destiny Lightfall", description: "The next Destiny 2 DLC where we travel to Neomuna", release_date: DateTime.new(2023, 02, 28), anticipation: 9)

Game.create(name: "Hogwarts Legacy", description: "Hogwarts Legacy is an upcoming action role-playing game developed by Avalanche Software and published by Warner Bros.", release_date: DateTime.new(2023, 02, 10), anticipation: 8)