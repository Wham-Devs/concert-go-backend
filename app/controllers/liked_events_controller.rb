class LikedEventsController < ApplicationController
    def index
        eventsx = LikedEvent.all
        render json: eventsx
    end

    def create
        eventx = LikedEvent.create(liked: params[:liked])
        if eventx.valid?
          render json: eventx
        else 
          render json: eventx.errors, status: 422
        end
      end

      def destroy
        eventx = LikedEvent.find(params[:id])
        eventx.destroy
        render json: event
    end

end


