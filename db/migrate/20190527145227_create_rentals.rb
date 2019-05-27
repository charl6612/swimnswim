class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.date :date
      t.integer :user_number
      t.text :comment
      t.references :pool, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
