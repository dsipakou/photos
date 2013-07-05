class PhotosController < ApplicationController
	layout 'main'
	def photo
		@photo = Item.find(params[:id])
	end
end
