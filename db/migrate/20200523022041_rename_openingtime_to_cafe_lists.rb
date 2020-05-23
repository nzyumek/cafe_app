class RenameOpeningtimeToCafeLists < ActiveRecord::Migration[6.0]
  def change
    rename_column :cafe_lists, :openingtime, :openingtime1
  end
end
