class Creadit4uController < ApplicationController
	def index
		@categories = Category.enabled.root.all
    @products = Product.active.order('id desc').page(params[:page])
	end

	def order_list
  end
 
end
