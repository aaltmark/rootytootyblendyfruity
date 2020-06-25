class SmoothiesController < ApplicationController
    def index
        @smoothies = Smoothie.all 
    end 

    def show 
        @smoothie = Smoothie.find(params[:id])
        @ingredient = @smoothie.ingredients
        byebug
    end 

    def new 
        @smoothie = Smoothie.new
    end 

    def create
        @smoothie = Smoothie.create(smoothie_params)
        redirect_to smoothie_path(smoothie.id)
    end 

    def edit 
        @smoothie = Smoothie.find(params[:id])
    end 

    def update
        smoothie = Smoothie.find(params[:id])
        smoothie.update(smoothie_params)
        redirect_to smoothie_path(smoothie.id)
    end 

    def delete 
        smoothie = Smoothie.find(params[:id])
        smoothie.destroy
        redirect_to smoothie_path
    end 

    private 
    def smoothie_params
        params.require(:smoothie).permit(:name, :ingredients_id)
    end 
end
