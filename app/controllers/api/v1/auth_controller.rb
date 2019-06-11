class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(name: params[:username])
        if user && user.authenticate(params[:password])
            token = issue_token(id: user.id)
            render json: {id: user.id, username: user.name, steamid: user.steamid, token: token}
        else
            render json: {error: "Error logging in"}, status: 401
        end
    end

    def show
        token = request.headers["Authenticate"]
        decoded = JWT.decode(token,"secret", true, {algorithm: "HS256"}).first
        id = decoded["id"]
        user = User.find_by(id: id)
        if user
            render json: {id: user.id, username: user.name, steamid: user.steamid}
        else
            render json: {error: "Error logging in"}, status: 401
        end
        
    end
end
