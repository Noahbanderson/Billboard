
25.times do 
   art = Artist.create(artist_name: Faker::Music.band)
   50.times do art.songs.create(song_title: Faker::Music::Opera.donizetti)
   end
end

10.times do 
    bill = Billboard.create(billboard_name: "Top 100 #{Faker::Music.genre} Songs")
end

# 100.times do bill.songs.create(song_title: Faker::Music::Phish.song)
# end





