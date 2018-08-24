class CreateMarkets < ActiveRecord::Migration[5.0]
  def change
    create_table :markets do |t|
      t.string :title
      t.text :content
      
      t.string :size,   null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
