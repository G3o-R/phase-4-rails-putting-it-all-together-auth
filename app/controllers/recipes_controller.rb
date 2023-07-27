# class RecipesController < ApplicationController

#     def index 
#         if @current_user
#             render json: @current_user.recipes
#         else
#             reder json: Recipe.all
#         end
#     end

# end


class RecipesController < ApplicationController
  
    def index
      render json: Recipe.all
    end
  
    def create
      recipe = @current_user.recipes.create!(recipe_params)
      render json: recipe, status: :created
    end
  
    private
  
    def recipe_params
      params.permit(:title, :instructions, :minutes_to_complete)
    end
  
  end