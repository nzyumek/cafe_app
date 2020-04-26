class AddNew2ToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :reservation, :string
  end
end
