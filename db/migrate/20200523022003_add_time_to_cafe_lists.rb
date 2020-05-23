class AddTimeToCafeLists < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :closingtime2, :string
    add_column :cafe_lists, :closingtime1, :string
    add_column :cafe_lists, :openingtime2, :string
  end
end
