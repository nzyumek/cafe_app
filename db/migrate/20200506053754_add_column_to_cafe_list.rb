class AddColumnToCafeList < ActiveRecord::Migration[6.0]
  def change
    add_column :cafe_lists, :user_id, :integer
  end
end
