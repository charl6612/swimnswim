class CreatePools < ActiveRecord::Migration[5.2]
  def change
    create_table :pools do |t|
      t.string :address
      t.text :description
      t.integer :price_per_day
      t.integer :capacity
      t.string :pictures
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
