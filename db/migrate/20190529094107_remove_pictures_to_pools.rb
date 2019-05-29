class RemovePicturesToPools < ActiveRecord::Migration[5.2]
  def change
    remove_column :pools, :pictures
  end
end
