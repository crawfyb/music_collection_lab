require('pry')
require_relative('../models/albums')
require_relative('../models/artist')

# Album.delete_all()
# Artist.delete_all()

artist1 = Artist.new({
  'name' => "Mac DeMarco"
  })

artist1.save()

# album1 = Album.new({
#   'title' => 'Here comes the cowboy',
#   'genre' => 'indie',
#   'artist_id' => artist1.id
#   })
#
#   album1.save()




binding.pry
nil
