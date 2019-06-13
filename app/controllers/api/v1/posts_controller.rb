class Api::V1::PostsController < ApplicationController

    def index
        @posts = Post.all 
        render json: @posts
    end 

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.create(poster_id:params[:poster_id][:id], game_id: params[:game_id], title: params[:title], content: params[:content])
        render json: @post
    end 

end
