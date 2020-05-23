class ChangeTelToCafeLists < ActiveRecord::Migration[6.0]
  def change
    change_column :cafe_lists, :firsttel, :string
    change_column :cafe_lists, :midtel, :string
    change_column :cafe_lists, :lasttel, :string
  end
end
