class Song < ActiveRecord::Base
	attr_accessible :name, :album_id
	validates_presence_of :name
  belongs_to :album
  has_one :artist, through: :album
end
