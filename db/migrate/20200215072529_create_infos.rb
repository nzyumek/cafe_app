class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :content
      t.references :cafe_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
