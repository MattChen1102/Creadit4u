class UserCardCategoryShip < ApplicationRecord
	belongs_to :user
	belongs_to :user_card_category

	validates_uniqueness_of :user_id, scope: :user_card_category_id
end
