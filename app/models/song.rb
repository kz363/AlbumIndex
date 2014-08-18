class Song < ActiveRecord::Base
	attr_accessible :name, :album_id, :artist_id
	validates_presence_of :name
	belongs_to :album
	belongs_to :artist

  # With the way the database is setup, there can be multiple songs with the same names, but
  # album and artist names are unique. This is accounted for in the many conditionals in the method.
  def self.find_by(args={})
  	title = args.fetch(:title, nil)
  	album_name = args.fetch(:album, nil)
  	artist_name = args.fetch(:artist, nil)
    artist = Artist.find_by_name( artist_name )
    album = Album.find_by_name( album_name )
    songs = []

  	# I understand this code is not optimal, but it's the best way I know how to do this
  	# with my current knowledge.
  	if title && album && artist
  		songs = Song.where( name: title, album_id: album.id )
  	elsif title && album
  		songs = Song.where( name: title, album_id: album.id )
  	elsif title && artist
  		songs = Song.where( name: title, artist_id: artist.id )
  	elsif album && artist
  		songs = Song.where( album_id: album.id, artist_id: artist.id )
  	elsif title
  		songs = Song.where( name: title )
  	elsif album
  		songs = Song.where( album_id: album.id )
  	elsif artist
  		songs = Song.where( artist_id: artist.id )
  	end

  	songs.to_a
  end
end
