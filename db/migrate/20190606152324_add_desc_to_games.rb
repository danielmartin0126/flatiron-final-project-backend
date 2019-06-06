class AddDescToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :desc, :string
  end
end
