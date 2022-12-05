class PostsController < ApplicationController
    def index
        @posts = Post.all
        @posts = @posts.where(status: params[:status]) if params[:status]
        render json: {data: @posts, count: @posts.count}
    end

    def show
        @post = Post.find(params[:id])

        render json: @post
    end

    def create
        @user = User.find(params[:user_id])
        @post = @user.posts.create(title: params[:title], description: params[:description], status: params[:status], image: params[:image])

        render json: @post
    end

    def update
        @post = Post.find(params[:id])
        @post.update(title: params[:title], description: params[:description], user_id: params[:user_id], status: params[:status], images: params[:images])
        

        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        render json: "#{@post.title} has been deleted!"
    end
end
