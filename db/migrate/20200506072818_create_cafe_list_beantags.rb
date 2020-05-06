class CreateCafeListBeantags < ActiveRecord::Migration[6.0]
  def change
    create_table :cafe_list_beantags do |t|
      t.references :cafe_list, null: false, foreign_key: true
      t.references :beantag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
