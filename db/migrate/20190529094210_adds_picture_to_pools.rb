class AddsPictureToPools < ActiveRecord::Migration[5.2]
  def change
    add_column :pools, :picture, :string
  end
end
