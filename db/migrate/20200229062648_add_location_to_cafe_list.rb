class AddLocationToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :location_url, :string
  end
end
