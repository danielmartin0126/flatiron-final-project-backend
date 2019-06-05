class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :poster_id
      t.integer :game_id
      t.string :content
      t.timestamps
    end
  end
end
