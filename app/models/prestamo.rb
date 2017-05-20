class Prestamo < ApplicationRecord

	TIPO = ['AUTO','VIVIENDA','PERSONAL']

	validates :monto, numericality: { only_integer: true }
	validates :monto, numericality: { greater_than: 5000 }


	has_many :pagos
end
