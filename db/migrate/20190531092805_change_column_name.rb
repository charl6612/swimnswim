class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :rentals, :date, :date_arrivee
  end
end
