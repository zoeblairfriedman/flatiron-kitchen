class RecipesController < ApplicationController

    def new 
        @recipe = Recipe.new
    end

    def create
        @recipe = Recipe.new(recipe_params)
        binding.pry
        if @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end



private

    def recipe_params
        params.require(:recipe).permit(:name)
    end

end
