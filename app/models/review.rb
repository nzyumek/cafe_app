class Review < ApplicationRecord
  belongs_to :cafe_list
  
  has_many_attached :review_images
end
