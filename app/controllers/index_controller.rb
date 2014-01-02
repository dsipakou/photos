class IndexController < ApplicationController
	layout 'main'
	def index
		@items = Kaminari.paginate_array(Item.all).page(params[:page]).per(25)
		@categories = Category.all
		if params[:id]
			@cat_name = Category.find(params[:id]).name
		end
		#@items = Item.page(params[:page])
	end
end
