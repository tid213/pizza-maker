class ToppingsController < ApplicationController
    def index
        @toppings = Topping.all
    end
    
    def edit
        @pizza = Pizza.find(params[:pizza_id])
        @topping = @pizza.toppings.find(params[:id])
    end
    
    def create
        @pizza = Pizza.find(params[:pizza_id])
        @topping = @pizza.toppings.create(topping_params)
        redirect_to pizza_path(@pizza)
    end

    def update
        @pizza = Pizza.find(params[:pizza_id])
        @topping = @pizza.toppings.find(params[:id])
       
        if @topping.update(topping_params)
          redirect_to @pizza
        else
          render 'edit'
        end
    end

    def destroy
        @pizza = Pizza.find(params[:pizza_id])
        @topping = @pizza.toppings.find(params[:id])
        @topping.destroy
        redirect_to pizza_path(@pizza)
    end
     
    private
        def topping_params
          params.require(:topping).permit(:name)
    end
end
