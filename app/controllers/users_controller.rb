class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def show
        # user = User.find(params[:id])
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy!
        render json: {}
    end

    def update
        user = User.find(params[:id])
        user.update!(username: params[:username], password: params[:password])
        render json: user
    end

    private

    def user_params
        params.require(:user).permit(:username, :password_digest, :email)
    end
end