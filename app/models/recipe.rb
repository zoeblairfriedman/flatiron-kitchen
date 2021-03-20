class Recipe < ApplicationRecord
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    validates_presence_of :name

    # def ingredients_attributes=(ingredients_attributes)
    #     binding.pry
    #     ingredients_attributes.each do |ingredient_attribute|
    #         self.ingredients.build(ingredient_attribute)
    #     end
    # end 

end


#when you get back to this, the issue is that it's coming in as a hash, not as an array. Avi's hack is not working for me

