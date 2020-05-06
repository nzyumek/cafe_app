class CafeList < ApplicationRecord
    has_many :infos
    has_many_attached :cafe_list_images
    has_many :reviews
    belongs_to :user
    has_many :cafe_list_beantags
    has_many :beantags, through: :cafe_list_beantags
    accepts_nested_attributes_for :cafe_list_beantags
    #validate :validate_cafe_list_images

      ##def validate_cafe_list_images
       # errors.add(:cafe_list_images, "画像データではありません。") unless image?
      #end
    
     # def image?
       # return '' unless cafe_list_images.attached?
    
       # %w[image/jpg image/jpeg image/png image/gif].include?(cafe_list_images.blobs.content_type)
      #end
    ##scope :search, (->(word) {  CafeList.where("title LIKE ?", "%" + params[:q] + "%") })
    #scope :title_like, -> (title) { where('title LIKE ?', "%#{title}%") if title.present? }
    #scope :bean_like, -> (bean) { where('bean LIKE ?', "%#{bean}%") if bean.present? }
    #scope :location_like, -> (location) { where('location LIKE ?', "%#{location}%") if location.present? }
end
