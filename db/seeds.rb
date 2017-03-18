# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Artist 1
adele = Artist.create(
          name: "Adele",
          image: "",
          description: "When the U.K. press began dubbing Adele 'the next Amy Winehouse' in late 2007, the hype didn't touch upon the singer/songwriter influence found in the Londoner's music. Influenced by Roberta Flack and Suzanne Vega as much as Jill Scott, Adele soon became a phenomenon in her own right; her second album, 21, eventually sold an estimated 30 million copies worldwide, making her one of the few sales successes in an age of digital streaming."
          )

song1_adele = Song.create(title: "Hello", length: "456", artist: adele)
song2_adele = Song.create(title: "Rolling in the deep", length: "348", artist: adele)
song3_adele = Song.create(title: "Rumour has it", length: "443", artist: adele)

#Artist 2
fall_out_boy = Artist.create(
              name: "Fall Out Boy",
              image: "",
              description: "Fall out boy desciption"
              )

song1_falloutboy = Song.create(title: "Immortals", length: "456", artist: fall_out_boy)
song2_falloutboy = Song.create(title: "Centuries", length: "456", artist: fall_out_boy)
