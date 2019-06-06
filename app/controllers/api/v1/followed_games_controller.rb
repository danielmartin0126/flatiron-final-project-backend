class Api::V1::FollowedGamesController < ApplicationController

    def index
        @followedGames = FollowedGame.all 
        render json: @followedGames
    end

    def total_followers
        @followers = FollowedGame.all.select{|fg| fg.game_id.to_s == params[:id]}
        render json: @followers
    end

end
