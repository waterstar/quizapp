class QuizesController < ApplicationController
	def index
	  @known = Knownfact.order("RANDOM()").first
	end

	def create
		@fact = Knownfact.create(knownfact_params)
		if @fact.invalid?
			flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
		end
		redirect_to root_path
	end

	def new
	  @known = Knownfact.new
	end

	def knownfact_params
		params.require(:knownfact).permit(:fact, :yes_count, :no_count)
	end
end
