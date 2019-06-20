class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end

    def create
        @user = User.create(name: params["username"], password: params["password"])
        render json: @user
    end
    
    def show
        @user = User.find(params[:id])
        render json: @user
    end

end
