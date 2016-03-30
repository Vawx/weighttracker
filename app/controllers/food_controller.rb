class FoodController < ApplicationController
  define_method :show do
    @food = Food.find params[:id]
  end
end
