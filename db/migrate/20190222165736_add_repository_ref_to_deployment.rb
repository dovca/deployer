class AddRepositoryRefToDeployment < ActiveRecord::Migration[5.2]
  def change
    add_reference :deployments, :repository, foreign_key: true
  end
end
