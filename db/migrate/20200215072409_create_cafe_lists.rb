class CreateCafeLists < ActiveRecord::Migration[6.0]
  def change
    create_table :cafe_lists do |t|
      t.string :title
      t.string :bean
      t.string :location
      t.string :location_url

      t.timestamps
    end
  end
end
