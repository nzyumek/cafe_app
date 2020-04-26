class AddNewToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :access, :string
    add_column :cafe_lists, :parking, :string
    add_column :cafe_lists, :openingtime, :string
    add_column :cafe_lists, :dayoff, :string
    add_column :cafe_lists, :tel, :string
    add_column :cafe_lists, :envir, :string
    add_column :cafe_lists, :wifi, :string
    add_column :cafe_lists, :cashless, :string
  end
end
