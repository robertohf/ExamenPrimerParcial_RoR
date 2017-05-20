class Pago < ApplicationRecord
  belongs_to :prestamo

  validates :cuota, numericality: { only_integer: true }
  validates :cuota, numericality: { greater_than: 0 }

end
