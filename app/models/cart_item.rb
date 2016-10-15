class CartItem < ApplicationRecord
	belongs_to :cart
  belongs_to :item, class_name: 'Product'

  delegate :name, :price, to: :item
  
  def subtotal
    quantity * item.price
  end
end
