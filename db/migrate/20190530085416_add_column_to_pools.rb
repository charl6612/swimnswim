class AddColumnToPools < ActiveRecord::Migration[5.2]
  def change
    add_column :pools, :picture1, :string
    add_column :pools, :picture2, :string
  end
end
