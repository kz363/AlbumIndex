class Album < ActiveRecord::Base
	attr_accessible :name, :artist_id
	validates_presence_of :name
  belongs_to :artist
  has_many :songs
end
