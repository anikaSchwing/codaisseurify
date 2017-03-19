# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Artist 1
adele = Artist.create(
          name: "Adele",
          image: "http://res.cloudinary.com/docyccptu/image/upload/v1489852781/Adele-2015-Alasdair-McLellan-billboard-650_c757em.jpg",
          description: Faker::Lorem.paragraph
          )

song1_adele = Song.create(title: "Hello", artist: adele)
song2_adele = Song.create(title: "Rolling in the deep", artist: adele)
song3_adele = Song.create(title: "Rumour has it", artist: adele)

#Artist 2
fall_out_boy = Artist.create(
              name: "Fall Out Boy",
              image: "http://res.cloudinary.com/docyccptu/image/upload/v1489852977/fall-out-boy-press-2013-650b_zbq7u1.jpg",
              description: Faker::Lorem.paragraph
              )

song1_falloutboy = Song.create(title: "Immortals", artist: fall_out_boy)
song2_falloutboy = Song.create(title: "Centuries", artist: fall_out_boy)

# Artist 3
michael_buble = Artist.create(
              name: "Michael Buble",
              image: "http://res.cloudinary.com/docyccptu/image/upload/v1489913044/michael-buble-to-present-brit-awards-2017-01_a8dafg.jpg",
              description: Faker::Lorem.paragraph
              )

song1_buble = Song.create(title: "It's a Beautiful Day", artist: michael_buble)
song2_buble = Song.create(title: "Feeling Good", artist: michael_buble)
song3_buble = Song.create(title: "Haven't Met You Yet", artist: michael_buble)
song4_buble = Song.create(title: "Call Me Irresponsible", artist: michael_buble)

# Artist 4
frank_sinatra = Artist.create(
              name: "Frank Sinatra",
              image: "http://res.cloudinary.com/docyccptu/image/upload/v1489913044/frank-sinatra-1963-billboard-650_dvmaa1.jpg",
              description: Faker::Lorem.paragraph
              )

song1_sinatra = Song.create(title: "Sunday", artist: frank_sinatra)
song2_sinatra = Song.create(title: "All Of Me", artist: frank_sinatra)
song3_sinatra = Song.create(title: "My Funny Valentine", artist: frank_sinatra)
