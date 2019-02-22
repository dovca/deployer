class DeploymentsController < ApplicationController
	def new
		@repository = Repository.find(params[:repository_id])
		@deployment = Deployment.new
	end

	def edit
		@repository = Repository.find(params[:repository_id])
        @deployment = @repository.deployments.find(params[:id])
	end

	def create
		@repository = Repository.find(params[:repository_id])

		@deployment = @repository.deployments.create(deployment_params)
		@deployment.save

		redirect_to repository_path(@repository)
	end

	def update
		@repository = Repository.find(params[:repository_id])
		@deployment = @repository.deployments.find(params[:id])
		@deployment.update(deployment_params)

		redirect_to repository_path(@repository)
	end

	private
		def deployment_params
			params.require(:deployment).permit(:script, :branch, :autorun)
		end
end
