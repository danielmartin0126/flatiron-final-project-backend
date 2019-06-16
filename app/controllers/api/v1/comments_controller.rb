class Api::V1::CommentsController < ApplicationController

    def index
        @comments = Comment.all 
        render json: @comments
    end

    def create
        @comment = Comment.create(user_id: params[:user_id], post_id: params[:post_id], content: params[:comment])
        render json: @comment
    end 

end
