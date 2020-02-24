class CafeList < ApplicationRecord
    has_many :infos
    ##scope :search, (->(word) {  CafeList.where("title LIKE ?", "%" + params[:q] + "%") })
    #scope :title_like, -> (title) { where('title LIKE ?', "%#{title}%") if title.present? }
    #scope :bean_like, -> (bean) { where('bean LIKE ?', "%#{bean}%") if bean.present? }
    #scope :location_like, -> (location) { where('location LIKE ?', "%#{location}%") if location.present? }
end
