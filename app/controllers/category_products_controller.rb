class CategoryProductsController < ApplicationController
	before_action :find_category
 
   def show
      @product = @category.products.active.find(params[:id])
   end

   def add
      @product = @category.products.active.find(params[:id])
      @cart = find_cart
      @cart.add_item(@product)
      session[:cart_id] = @cart.id
      redirect_to :back, notice: '已將預約商品添加至預約單'
   end
 
   private
 
   # Check it in`rake routes`
   # category_product GET /categories/:category_id/products/:id(.:format) category_products#show
   def find_category
      @category = Category.enabled.find(params[:category_id])
   end

   def find_cart
      if user_signed_in?
        current_user.cart || current_user.create_cart
      elsif session[:cart_id]
        cart = Cart.find(session[:cart_id])
      else
        cart = Cart.create
        session[:cart_id] = cart.id
        cart
      end
   end
end
