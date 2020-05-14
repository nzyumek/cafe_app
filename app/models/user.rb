class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  mount_uploader :image, ImageUploader
  
  validates :name, presence: true
  attr_accessor :current_password
  
  has_one_attached :profileimage
  
  has_many :cafe_lists
  has_many :reviews
end
