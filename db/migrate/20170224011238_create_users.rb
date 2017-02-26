class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :followers_count
      t.integer :following_count
      t.integer :star_posts_count, default: 0

      t.timestamps
    end
  end
end
