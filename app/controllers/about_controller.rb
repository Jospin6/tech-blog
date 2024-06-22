class AboutController < ApplicationController
    def index
        @user = User.find(3)
    end
end