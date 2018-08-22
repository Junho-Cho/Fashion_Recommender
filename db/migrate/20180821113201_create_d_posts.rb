class CreateDPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :d_posts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
