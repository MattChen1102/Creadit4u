class UserCardCategory < ApplicationRecord
	has_many :user_card_category_ships 
  has_many :users , :through => :user_card_category_ships 
end
