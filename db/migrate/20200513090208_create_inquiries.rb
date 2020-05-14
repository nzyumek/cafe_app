class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.text :message
      t.string :mail

      t.timestamps
    end
  end
end
