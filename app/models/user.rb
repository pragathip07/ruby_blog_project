class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :comments
  # has_many :posts
  devise :database_authenticatable,
         :recoverable, :registerable, :rememberable, :validatable
end
