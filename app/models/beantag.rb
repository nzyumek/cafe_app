class Beantag < ApplicationRecord
    has_many :cafe_lists, through: :cafe_list_beantags
    has_many :cafe_list_beantags, dependent: :destroy
  
    validates :name, presence: true
    validates :name, uniqueness: true
end
