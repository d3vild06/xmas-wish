class WishesController < ApplicationController
    def index
        @wishes = Wish.page(params[:page]).per(4)
    end
end
