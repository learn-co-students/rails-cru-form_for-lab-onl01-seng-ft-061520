# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup)
#
# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all




Artist.create(name: "Abraham", bio: "Abe is salty so he sings angry pessimistic songs.")
Artist.create(name: "Beatrice", bio: "Beatrice is a soulful singer and her voice expresses all the pain and suffering in the world.")
Artist.create(name: "Celia", bio: "Celia is a young pop singer.")

# table "artists"
#   string   "name"
#   text     "bio"



Genre.create(name: "pop")
Genre.create(name: "soul")
Genre.create(name: "hard rock")
 
# table "genres"
#   string   "name"



Song.create(name: "End of the World", artist_id: 4, genre_id: 3)
Song.create(name: "Broken Hearted", artist_id: 5, genre_id: 2)
Song.create(name: "Fame Game", artist_id: 4, genre_id: 1)

# table "songs"
#   string   "name"
#   integer  "artist_id"
#   integer  "genre_id"