class CafeListBeantag < ApplicationRecord
  belongs_to :cafe_list
  belongs_to :beantag
  
  validates :cafe_list_id, :uniqueness => { :scope => :beantag_id }
end
