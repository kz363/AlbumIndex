require 'spec_helper'

describe PagesController do
	describe 'get #index' do
		it "renders the :index view" do
			get :index
			expect(response).to render_template :index
		end
	end

	describe 'get #search' do
		# let(:params){ { song: 1, album: 2, artist: 3 } }
		it "renders a json object" do
			get :search
			expect(response.content_type).to eq("application/json")
		end
	end
end
