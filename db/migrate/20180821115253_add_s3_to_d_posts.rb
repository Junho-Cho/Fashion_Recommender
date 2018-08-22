class AddS3ToDPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :d_posts, :image, :string
  end
end
