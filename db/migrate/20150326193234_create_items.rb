class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :tipo
      t.float :price
      t.integer :tiempo

      t.timestamps null: false
    end
  end
end
