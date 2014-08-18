class PagesController < ApplicationController
	def index
	end

	def search
		Song.find_by( title: params[:song],
									album: params[:album],
									artist: params[:artist] )

	end
end
