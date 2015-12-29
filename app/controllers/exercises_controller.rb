class ExercisesController < ApplicationController
	def create
		@workout = Workout.find(params[:workout_id])
		@exercise = @workout.exercises.create(workout_params)
		redirect_to workout_path(@workout)
	end

	private 
		def workout_params
			params[:exercise].permit(:name, :sets, :reps)				
		end
end
