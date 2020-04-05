class AddImageToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :image, :string
  end
end
