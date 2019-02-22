class AddIsPendingToDeployment < ActiveRecord::Migration[5.2]
  def change
    add_column :deployments, :is_pending, :boolean, :null => false, :default => false
  end
end
