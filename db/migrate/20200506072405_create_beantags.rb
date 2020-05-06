class CreateBeantags < ActiveRecord::Migration[6.0]
  def change
    create_table :beantags do |t|
      t.string :name
      t.references :cafe_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
