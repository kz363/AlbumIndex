require 'spec_helper'

describe 'Pages' do
	let(:artist) { create(:artist, name: "artist") }
	let(:album) { create(:album, name: "album", artist_id: artist.id) }
	let(:song) { create(:song, name: "song1") }

	describe 'Search database' do
		it "Finds an existing song and displays the results", js: true do
			visit root_path
			fill_in 'song', with: song.name
			fill_in 'artist', with: artist.name
			fill_in 'album', with: album.name
			click_button 'Search'
			expect(page).to have_content "Song List"
		end
	end
end
