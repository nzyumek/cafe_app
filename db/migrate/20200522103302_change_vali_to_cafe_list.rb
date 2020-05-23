class ChangeValiToCafeList < ActiveRecord::Migration[6.0]
  def change
    change_column_null :cafe_lists, :title, false
    change_column_null :cafe_lists, :ward, false
    change_column_null :cafe_lists, :location, false
    change_column_null :cafe_lists, :prefecture, false
  end
end
