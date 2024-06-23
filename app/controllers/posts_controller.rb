class PostsController < ApplicationController 
    def index
    end

    def new 
    end

    def create
        my_params = params.require(:post).permit(:title, :content)
        Post.create(my_params)

        redirect_to "/posts"
    end
end