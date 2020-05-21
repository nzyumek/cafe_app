class CreateCafeListCashlesstags < ActiveRecord::Migration[6.0]
  def change
    create_table :cafe_list_cashlesstags do |t|
      t.references :cafe_list, null: false, foreign_key: true
      t.references :cashlesstag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
