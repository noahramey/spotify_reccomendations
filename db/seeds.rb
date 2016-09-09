# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
playlist1 = Playlist.create(name: "Hip Hop/Rap", description: "My favorite hip hop/rap songs", url: "https://example.com/hiphop")
playlist2 = Playlist.create(name: "Indie", description: "My favorite indie songs", url: "https://example.com/indie")
Track.create([{name: "Ill Mind of Hopsin 8", artist: "Hopsin", album: "Ill Mind of Hopsin 8 - Single", playlist_id: playlist1.id}, {name: "How Much A Dollar Cost", artist: "Kendrick Lamar", album: "To Pimp A Butterfly", playlist_id: playlist1.id}, {name: "Bonfire", artist: "Childish Gambino", album: "Camp", playlist_id: playlist1.id}, {name: "Sea Legs", artist: "The Shins", album: "Wincing The Night Away", playlist_id: playlist2.id}, {name: "Two Weeks", artist: "Grizzly Bear", album: "Veckatimest", playlist_id: playlist2.id}, {name: "Quesadilla", artist: "WALK THE MOON", album: "Walk The Moon", playlist_id: playlist2.id}])
