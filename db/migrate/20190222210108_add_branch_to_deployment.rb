class AddBranchToDeployment < ActiveRecord::Migration[5.2]
  def change
    add_column :deployments, :branch, :string
  end
end
