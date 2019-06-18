class Api::V1::GamesController < ApplicationController

    def index
        @games = Game.all 
        render json: @games
    end

    def show
        @game = Game.find(params[:id])
        render json: @game
    end

    def create
        puts params["id"]
        # game_data = RestClient.get("https://store.steampowered.com/api/appdetails?appids=#{params["id"]}")
        # stuff = JSON.parse(game_data)
        # if (stuff[params[:id]]["success"] && stuff[params[:id]]["data"]["type"] === "game")
        #     @game = Game.find_or_create_by(app_id: stuff[params[:id]]["data"]["steam_appid"], name: stuff[params[:id]]["data"]["name"], desc: stuff[params[:id]]["data"]["short_description"])
        #     render json: @game
        # end 
    end 

    def api 
        @game_data = RestClient.get("https://api.steampowered.com/ISteamApps/GetAppList/v1")
        @stuff = JSON.parse(@game_data)
        render json: @stuff
    end 
    
  

end
