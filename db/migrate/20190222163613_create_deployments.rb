class CreateDeployments < ActiveRecord::Migration[5.2]
  def change
    create_table :deployments do |t|

      t.timestamps
    end
  end
end
