class ShoppingListsController < ApplicationController
    def index
        @shopping_lists = ShoppingList.all
        @shopping_list = ShoppingList.new
    end

    def create 
        @shopping_list = ShoppingList.new(shopping_list_params)
        respond_to do |format|
            if @shopping_list.save
                format.html { redirect_to shopping_lists_url }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private 

    def shopping_list_params
        params.require(:shopping_list).permit(:title)
    end

end
