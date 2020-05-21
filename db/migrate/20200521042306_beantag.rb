class Beantag < ActiveRecord::Migration[6.0]
  def change
    drop_table :beantags
  end
end
