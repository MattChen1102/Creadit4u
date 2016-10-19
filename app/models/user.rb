class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :email, :message => "此Email已被使用了"

  has_one :cart
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :user_card_category_ships 
  has_many :user_card_categories , :through => :user_card_category_ships

  before_create :generate_authentication_token
  
  def generate_authentication_token
     self.authentication_token = Devise.friendly_token
  end
end
