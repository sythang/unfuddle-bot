class Api::V1::ProjectsController < ApplicationController
	def index
		render json: {status: true}, status: :ok
	end
end
