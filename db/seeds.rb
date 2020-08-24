# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
artist1 = Artist.create(name: "My Artist", bio: "My artist bio")
genre1 = Genre.create(name: "My Genre")
song1 = Song.create(name: "My Song", artist_id: artist1.id, genre_id: genre1.id)

artist2 = Artist.create(name: "Also My Artist", bio: "Also My artist bio")
genre2 = Genre.create(name: "Also My Genre")
song2 = Song.create(name: "Also My Song", artist_id: artist2.id, genre_id: genre2.id)
