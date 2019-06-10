class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(name: params[:username])
        if user && user.authenticate(params[:password])
            render json: {id: user.id, username: user.name, steamid: user.steamid}
        else
            render json: {error: "Error logging in"}, status: 401
        end
    end

    def show
        token = request.headers["Authenticate"]
        user = User.find_by(id: token)
        if user
            render json: {id: user.id, username: user.name, steamid: user.steamid}
        else
            render json: {error: "Error logging in"}, status: 401
        end
        
    end
end
