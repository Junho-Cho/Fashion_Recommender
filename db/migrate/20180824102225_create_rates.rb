class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.references :stylejg, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
