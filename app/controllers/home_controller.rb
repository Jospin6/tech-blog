class HomeController < ApplicationController

    def index
        @posts = Post.all
        @user = User.find(3)
    end
    


end