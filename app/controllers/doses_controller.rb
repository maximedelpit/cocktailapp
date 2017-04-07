class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @drink = Drink.find(params[:drink_id])
    @dose.drink = @drink
    if @dose.save
      redirect_to drink_path(@drink)
    else
      @ingredients = Ingredient.all
      render "drinks/show"
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
