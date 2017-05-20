class ChangeStringToNumeric < ActiveRecord::Migration[5.0]
  def change

  	change_column :prestamos, :monto, :numeric

  end
end
