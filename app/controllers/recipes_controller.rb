class RecipesController < ApplicationController

    def new 
        @recipe = Recipe.new
        @recipe.ingredients.build
        @ingredients = Ingredient.all
    end

    def create
        binding.pry
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
            redirect_to recipe_path(@recipe)
        else
            render :new
        end
    end

    def show
        @recipe = Recipe.find_by(id: params[:id])
    end


private

    def recipe_params
        params.require(:recipe).permit(:name, :ingredients_attributes => [:name])
    end

end
