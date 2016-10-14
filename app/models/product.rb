class Product < ApplicationRecord
	belongs_to :category

	has_many :cart_items, foreign_key: 'item_id', dependent: :destroy
 
  has_many :carts, through: :cart_items

  validates_presence_of :name, :price

	scope :active, ->{ where(active: true).where('shelved_on <= ?', Date.current) }
end
