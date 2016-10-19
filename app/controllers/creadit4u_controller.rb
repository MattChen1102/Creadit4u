class Creadit4uController < ApplicationController
	def index
		@categories = Category.enabled.root.all
    @products = Product.active.includes(:category).order('id desc').page(params[:page])
	end

	def user_cards
		categories = UserCardCategory.where(:id => params[:user][:user_card_category_ids])
		categories.each{|c| current_user.user_card_categories << c if !current_user.user_card_categories.include?(c) }
		redirect_to :back
	end

	def profile
		@user_card_category = current_user.user_card_categories
	end

	def bulk_delete
	  ids = Array(params[:ids])
	  creadit4us = UserCardCategoryShip.where(:user_card_category_id => ids) 
	  creadit4us.each{ |c|c.destroy }

  	redirect_to profile_url
	end
	
end
