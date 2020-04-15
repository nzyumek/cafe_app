class RemoveImageFromCafeList < ActiveRecord::Migration[6.0]
  def change

    remove_column :cafe_lists, :image, :string
  end
end
