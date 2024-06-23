class PostsController < ApplicationController 
    def index
        @posts = Post.all
    end

    def new 
        @post = Post.new
    end

    def create
        my_params = params.require(:post).permit(:title, :content)
        Post.create(my_params)

        redirect_to "/posts"
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit 
        @post = Post.find(params[:id])
    end

    def update
        my_params = params.require(:post).permit(:title, :content)
        @post = Post.find(params[:id])
        @post.update(my_params)

        redirect_to "/posts"
    end

    def destroy
    end

end