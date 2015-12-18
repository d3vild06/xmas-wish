class WishesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

    def index
        @wishes = Wish.page(params[:page]).per(4)
    end

    def new
        @wish = Wish.new
    end

    def create
      @wish = current_user.wish.create(place_params)
      if @wish.valid?
        redirect_to root_path
      else
        render :new, :status => :unprocessable_entity
      end
    end

    def show
      @wish = Wish.find(params[:id])
    end


    def place_params
      params.require(:wish).permit(:wish, :name)
    end
end
