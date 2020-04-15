class CafeListImage < ApplicationRecord
    belongs_to :cafe_list
    mount_uploader :image_url, ImageUploader # make sure to include uploader (Carrierwave example)
end
