class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :destroy]

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal
    else
      render :new
    end
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

  def meal_params
    params.require(:meal).permit(:name)
  end

  def find_meal
    @meal = Meal.find(params[:id])
  end
end
