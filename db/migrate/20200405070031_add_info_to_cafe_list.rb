class AddInfoToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :info, :string
  end
end
