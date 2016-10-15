class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_one :cart
  has_many :orders, dependent: :destroy
  has_many :comments, dependent: :destroy

  before_create :generate_authentication_token
  
  def generate_authentication_token
     self.authentication_token = Devise.friendly_token
  end
end
