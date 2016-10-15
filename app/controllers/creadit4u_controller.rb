class Creadit4uController < ApplicationController
	def index
		@categories = Category.enabled.root.all
    @products = Product.active.includes(:category).order('id desc').page(params[:page])
	end
end
