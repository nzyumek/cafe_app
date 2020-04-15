class AddReferencesToCafeListImages < ActiveRecord::Migration[6.0]
  def change
    add_reference :cafe_list_images, :cafe_list, foreign_key: true
  end
end
