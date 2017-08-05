class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :destroy]

  def index
    @meals = Meal.all
  end

  def random_meal
    @random_meal = Meal.order("RANDOM()").first
  end

  def destroy
    if @meal.destroy
      redirect_to meals_path
    end
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end
end
