class CardsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def show
        card = Card.find(params[:id])
        render json: card
    end

    def index
        categories = Card.all
        render json: categories, except: [:created_at, :updated_at]
    end
    
    def create
        card = Card.create!(card_params)
        render json: card
    end

    def destroy
        card = Card.find(params[:id])
        card.destroy!
        render json: {}
    end

    def update
        card = Card.find(params[:id])
        card.update!(term: params[:term], definition: params[:definition], is_starred: params[:is_starred], category_id: params[:category_id])
        render json: card
    end

    private

    def card_params
        params.permit(:term, :definition, :is_starred, :category_id)
    end
end