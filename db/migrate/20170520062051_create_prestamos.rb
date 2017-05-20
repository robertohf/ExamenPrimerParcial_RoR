class CreatePrestamos < ActiveRecord::Migration[5.0]
  def change
    create_table :prestamos do |t|
      t.string :nombre
      t.decimal :monto
      t.string :tipo

      t.timestamps
    end
  end
end
