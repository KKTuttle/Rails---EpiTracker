class MealsController < ApplicationController
  def new
    @meal = Meal.new
    respond_to do |format|
      format.html { redirect_to new_entry_path }
      format.js
    end
  end
end
