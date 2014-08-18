10.times { Artist.create( name: Faker::Name.name ) }

10.times { |n| 10.times { Album.create( name: Faker::Company.bs + "#{n+1}",
														 						artist_id: n+1 ) } }

100.times { |n| 5.times { Song.create( name: Faker::Commerce.product_name + "#{n+1}", 
																			 album_id: n+1,
																			 artist_id: Album.find(n+1).artist.id ) } }