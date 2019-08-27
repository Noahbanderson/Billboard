
25.times do 
   art = Artist.create(artist_name: Faker::Music.band)
   50.times do art.songs.create(song_title: Faker::Music::Opera.donizetti)
   end
end

10.times do 
    bill = Billboard.create(billboard_name: "Top 100 #{Faker::Music.genre} Songs")
end



# country_list = [
#   [ "Germany", 81831000 ],
#   [ "France", 65447374 ],
#   [ "Belgium", 10839905 ],
#   [ "Netherlands", 16680000 ]
# ]

# country_list.each do |name, population|
#   Country.create( name: name, population: population )
# end


