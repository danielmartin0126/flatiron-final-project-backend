class Api::V1::FollowedGamesController < ApplicationController

    def index
        @followedGames = FollowedGame.all 
        render json: @followedGames
    end

    def total_followers
        @followers = FollowedGame.all.select{|fg| fg.game_id.to_s == params[:id]}
        render json: @followers
    end

    def create
        @follower = FollowedGame.find_or_create_by(user_id: params[:user_id], game_id: params[:game_id], app_id: params[:app_id])
        render json: @follower
    end

    def destroy
        FollowedGame.find(params[:id]).destroy
    end

end
