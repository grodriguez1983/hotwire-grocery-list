class ShoppingItemsController < ApplicationController
    def new
        @shopping_list = ShoppingList.find(params[:id])
        respond_to do |format|
            format.html { render :new }
        end
    end      
end
