class Api::V1::OwnedGamesController < ApplicationController
    
    def index
        @ownedGames = OwnedGame.all 
        render json: @ownedGames
    end

end

