(1..100).each do ||
  song = Song.find(rand(1..1250))
   song.song_title 
  Artist.find(song.artist_id).artist_name

@songlist = []

  100.times do 
     @songlist << Song.find(rand(1..1250))
  end

  @songlist.each do |song|
    puts song.song_title 
    puts Artist.find(song.artist_id).artist_name
  end