class AddScriptToDeployment < ActiveRecord::Migration[5.2]
  def change
    add_column :deployments, :script, :string
  end
end
