class AddS3ToStylejgs < ActiveRecord::Migration[5.0]
  def change
    add_column :stylejgs, :image, :string
  end
end
