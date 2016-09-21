class ExercisesController < ApplicationController
  def new
    @exercise =Exercise.new
    @user = current_user
    @entry = Entry.find(params[:entry_id])
    respond_to do |format|
      format.html { redirect_to user_entry_path(@user, @entry) }
      format.js
    end
  end
  def create
    @exercise = Exercise.create(exercise_params)
      respond_to do |format|
      format.html { redirect_to user_entry_path() }
      format.js
    end
  end

private
  def exercise_params
    params.require(:exercise).permit(:name, :calorie_count)
  end
end
