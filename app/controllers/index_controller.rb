class IndexController < ApplicationController
	layout 'main'
	def index
		@items = Kaminari.paginate_array(Item.all).page(params[:page]).per(25)
		@categories = Category.all
		#@items = Item.page(params[:page])
	end
end
