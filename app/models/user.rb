class User < ApplicationRecord
    has_many :friends
    has_many :comments
    has_many :posts, :class_name => :Post, :foreign_key => "poster_id"
    has_many :followed_games
    has_many :owned_games
    has_many :games, through: :followed_games
    has_many :o_games, through: :owned_games, source: :game
    has_secure_password
end
