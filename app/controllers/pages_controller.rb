class PagesController < ApplicationController
	def index
	end

	def search
		songs = Song.find_by( title: params[:song],
													album: params[:album],
													artist: params[:artist] )
		song_list = songs.map{ |s| s.to_html }.join('')
		render json: song_list.to_json
	end
end
