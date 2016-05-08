class VideosController < ApplicationController

	def index
		@videos = Video.paginate(page: params[:page], per_page: 5)
	end

	def show
		@video = Video.find(params[:id])
		@users = @video.users
	end
end