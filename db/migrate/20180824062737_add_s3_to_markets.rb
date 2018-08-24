class AddS3ToMarkets < ActiveRecord::Migration[5.0]
  def change
    add_column :markets, :image, :string
  end
end
