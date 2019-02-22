class RepositoriesController < ApplicationController
  def index
    @repositories = Repository.all
  end

  def show
	@repository = Repository.find(params[:id])
  end

  def new
    @repository = Repository.new
  end

  def create
	@repository = Repository.new(repository_params)
	@repository.save

	redirect_to @repository
  end

  private
    def repository_params
        params.require(:repository).permit(:name)
    end
end
