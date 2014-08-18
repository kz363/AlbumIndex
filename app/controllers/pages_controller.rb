class PagesController < ApplicationController
	def index
	end

	def search
		song = params[:song]
		album = params[:album]
		artist = params[:artist]
		puts song
		puts album
		puts artist
	end
end
