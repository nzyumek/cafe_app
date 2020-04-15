class CreateCafeListImages < ActiveRecord::Migration[6.0]
  def change
    create_table :cafe_list_images do |t|
      t.string :image_url
      
      t.timestamps
    end
  end
end
