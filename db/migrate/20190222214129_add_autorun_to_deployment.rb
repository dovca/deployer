class AddAutorunToDeployment < ActiveRecord::Migration[5.2]
  def change
    add_column :deployments, :autorun, :boolean, :null => false, :default => false
  end
end
