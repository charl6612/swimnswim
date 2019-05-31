class AddColumnDateDepartToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :date_depart, :date
  end
end
