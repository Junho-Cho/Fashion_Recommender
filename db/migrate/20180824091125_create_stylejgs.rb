class CreateStylejgs < ActiveRecord::Migration[5.0]
  def change
    create_table :stylejgs do |t|
      t.string :title
      t.text :context

      t.timestamps
    end
  end
end
