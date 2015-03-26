class CreateItemRankings < ActiveRecord::Migration
  def change
    create_table :item_rankings do |t|
      t.integer :rate
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
