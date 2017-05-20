class CreatePagos < ActiveRecord::Migration[5.0]
  def change
    create_table :pagos do |t|
      t.integer :cuota
      t.references :prestamo, foreign_key: true

      t.timestamps
    end
  end
end
