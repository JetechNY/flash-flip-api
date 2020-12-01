class CategoriesController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def show
        category = Category.find(params[:id])
        render json: category
    end

    def index
        categories = Category.all
        render json: categories, except: [:created_at, :updated_at]
    end
    
    def create
        category = Category.create!(category_params)
        render json: category
    end

    def destroy
        category = Category.find(params[:id])
        category.destroy!
        render json: {}
    end

    def update
        category = Category.find(params[:id])
        category.update!(name: params[:name], user_id: params[:user_id])
        render json: category
    end

    private

    def category_params
        params.permit(:name, :user_id)
    end
end