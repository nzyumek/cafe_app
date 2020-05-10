class AddPrefToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :prefecture, :string
    add_column :cafe_lists, :ward, :string
  end
end
