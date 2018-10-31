require('pp')
require_relative('../models/artist')
require_relative('../models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'U2'})
artist2 = Artist.new({'name' => 'Pink Floyd'})
artist3 = Artist.new({'name' => 'The Rolling Stones'})
artist4 = Artist.new({'name' => 'The Who'})
artist5 = Artist.new({'name' => 'The Sex Pistols'})

artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()

# pp Artist.all()

album1 = Album.new({'title' => 'Achtung Baby', 'genre' => 'Rock', 'artist_id' => artist1.id})
album2 = Album.new({'title' => 'The Joshua Tree', 'genre' => 'Rock', 'artist_id' => artist1.id})
album3 = Album.new({'title' => 'Whos Next', 'genre' => 'Rock', 'artist_id' => artist4.id})
album4 = Album.new({'title' => 'The Wall', 'genre' => 'Rock', 'artist_id' => artist2.id})
album5 = Album.new({'title' => 'Sticky Fingers', 'genre' => 'Rock', 'artist_id' => artist3.id})
album6 = Album.new({'title' => 'Wish You Were Here', 'genre' => 'Rock', 'artist_id' => artist2.id})


album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album6.save()

pp artist1.albums
pp artist5.albums
artist5.name = "Nuns"
artist5.update
pp album3.artist()
album4.genre = "Prog Rock"
album4.update
album5.delete
artist5.delete

# pp Album.all()
