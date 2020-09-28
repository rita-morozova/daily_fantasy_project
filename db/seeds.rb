# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FFNerd.api_key = "6rzmnpy3vtj2"
players = FFNerd.players
players.select! {|player| player.active == "1" }
players.select! {|player| player.position != "K" && player.position != "DEF" }
players.each {|player| Player.create(name: player[:displayName], position: player[:position])}