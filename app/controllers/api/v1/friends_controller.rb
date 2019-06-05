class Api::V1::FriendsController < ApplicationController
    def index
        @friends = Friend.all
        render json: @friends
      end
     
      def update
        @friend.update(friend_params)
        if @friend.save
          render json: @friend, status: :accepted
        else
          render json: { errors: @friend.errors.full_messages }, status: :unprocessible_entity
        end
      end
     
      private
     
      def friend_params
        params.permit(:title, :content)
      end
     
      def find_friend
        @friend = Friend.find(params[:id])
      end
end
