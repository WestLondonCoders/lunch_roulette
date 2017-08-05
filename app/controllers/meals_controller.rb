class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def random_meal
    @random_meal = Meal.order("RANDOM()").first
  end
end
