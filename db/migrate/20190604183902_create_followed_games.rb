class CreateFollowedGames < ActiveRecord::Migration[5.2]
  def change
    create_table :followed_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :app_id

      t.timestamps
    end
  end
end
