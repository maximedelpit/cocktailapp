class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drinks_params)
    if @drink.save
      redirect_to drink_path(@drink)
    else
      render "new"
    end
  end

  private

  def drinks_params
    params.require(:drink).permit(:name)
  end
end
