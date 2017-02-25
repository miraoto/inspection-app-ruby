class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.integer :likes_count
      t.integer :stars_count

      t.timestamps
    end
  end
end
