class Game < ApplicationRecord
    has_many :posts
    has_many :followed_games
    has_many :owned_games
    has_many :users, through: :followed_games
    has_many :users, through: :owned_games
end
