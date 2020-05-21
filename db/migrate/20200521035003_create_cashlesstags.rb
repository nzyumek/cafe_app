class CreateCashlesstags < ActiveRecord::Migration[6.0]
  def change
    create_table :cashlesstags do |t|
      t.string :name

      t.timestamps
    end
  end
end
