require 'spec_helper'

describe 'Pages' do
	let(:artist) { create :artist }
	let(:album) { create :album }
	let(:song) { create :song }

	describe 'Search database' do
		it "Finds an existing song and displays the results", js: true do
			visit root_path
			fill_in 'song', with: song.name
			fill_in 'album', with: album.name
			fill_in 'artist', with: artist.name
			click_button 'Search'
			expect(page).to have_content "Search Results"
		end
	end
end
