class UsersController < ApplicationController
    def index
        @users = User.all

        render json: {data: @users, count: @users.count}
    end

    def show
        @user = User.find(params[:id])

        render json: @user
    end

    def create
        @user = User.create(name: params[:name], age: params[:age], address: params[:address], phone: params[:phone], email: params[:email])

        render json: @user
    end

    def update
        @user = User.find(params[:id])
        @user.update(name: params[:name], age: params[:age], address: params[:address], phone: params[:phone], email: params[:email])

        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        render json: "#{@user.name} has been deleted!"
    end
    

end
