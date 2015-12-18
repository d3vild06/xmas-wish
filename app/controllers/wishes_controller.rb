class WishesController < ApplicationController
  before_action :authenticate_user!, :only => [:new, :create, :edit, :update, :destroy]

    def index
        @wishes = Wish.page(params[:page]).per(9)
    end
    
    def new
    end

    def create
      @wish = current_user.wishes.create(wish_params)
      if @wish.valid?
        redirect_to root_path
      else
        render :new, :status => :unprocessable_entity
      end
    end

    def show
      @wish = Wish.find(params[:id])
    end


    def wish_params
      params.require(:wish).permit(:wish)
    end
end
