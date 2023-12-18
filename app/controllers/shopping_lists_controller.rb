class ShoppingListsController < ApplicationController
    def index
        @shopping_lists = ShoppingList.all
        @shopping_list = ShoppingList.new
    end

    def create 
        @shopping_list = ShoppingList.new(shopping_list_params)
        respond_to do |format|
            if @shopping_list.save
                @shopping_lists = ShoppingList.all
                format.html { render :show_shopping_list, layout: false }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    def update
        @shopping_list = ShoppingList.find(params[:id])

        respond_to do |format|
            if @shopping_list.update(shopping_list_params)
                @shopping_lists = ShoppingList.all
                format.html { redirect_to new_shopping_item_path( @shopping_list.id) }
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    private 

    def shopping_list_params
        params.require(:shopping_list).permit(:title, :id, shopping_items_attributes: [:title])
    end

end
