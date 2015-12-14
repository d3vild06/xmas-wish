class WishesController < ApplicationController
    def index
        @wish = Wish.first
    end
end
