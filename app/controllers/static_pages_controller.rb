class StaticPagesController < ApplicationController

	def home
		@count = Prestamo.count()
		@sum = Prestamo.sum("monto")
	end
	
end
