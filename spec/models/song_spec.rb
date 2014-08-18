require 'spec_helper'

describe Song do
  it "has a valid factory" do
  	expect(create(:song)).to be_valid
  end
  
  it "is invalid without a name" do
  	expect(build(:song, name: nil)).to_not be_valid
  end

  describe "Song#find_by" do
    before(:each) do
      @artist = create(:artist, name: "artist")
      @album = create(:album, name: "album", artist_id: @artist.id)
      @song1 = create(:song, name: "song1")
      @song2 = create(:song, name: "song2", album_id: @album.id)
      @song3 = create(:song, name: "song3", artist_id: @artist.id)
      @song4 = create(:song, name: "song4", album_id: @album.id, artist_id: @artist.id)
    end

    it "returns an array of songs when given a song title" do
      expect(Song.find_by(title: "song1")).to eq([@song1])
    end
    it "returns an array of songs when given an album title" do
      expect(Song.find_by(album: "album")).to eq([@song2, @song4])
    end
    it "returns an array of songs when given artist name" do
      expect(Song.find_by(artist: "artist")).to eq([@song3, @song4])
    end
    it "returns an array of songs when given a song and album title" do
      expect(Song.find_by(title: "song2", album: "album")).to eq([@song2])
    end
    it "returns an array of songs when given a song title and artist name" do
      expect(Song.find_by(title: "song3", artist: "artist")).to eq([@song3])
    end
    it "returns an array of songs when given an album title and artist name" do
      expect(Song.find_by(album: "album", artist: "artist")).to eq([@song4])
    end
    it "returns an array of songs when given a song and album title, and artist name" do
      expect(Song.find_by(title: "song4", album: "album", artist: "artist")).to eq([@song4])
    end
  end
end
