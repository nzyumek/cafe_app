class AddUrlToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :url, :string
  end
end
