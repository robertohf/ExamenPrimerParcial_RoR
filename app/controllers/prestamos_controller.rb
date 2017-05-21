class PrestamosController < ApplicationController

	def index
		@prestamos = Prestamo.all
  	end

	def show
  		@prestamo = Prestamo.find(params[:id])
  		@balance = @prestamo.pagos.sum("cuota")
  	end

	def new
		@prestamo = Prestamo.new
  	end

  	def edit
  		@prestamo = Prestamo.find(params[:id])
  	end

  	def create
  		@prestamo = Prestamo.new(prestamo_params)
 
    	if @prestamo.save
      		redirect_to @prestamo
    	else
      		render 'new'
    	end
  	end

    def destroy
      @destroyPago
    end

  	def update
  		@prestamo = Prestamo.find(params[:id])
 
    	if @prestamo.update(prestamo_params)
      		redirect_to @prestamo
    	else
      		render 'edit'
    	end
  	end


  	private
    def prestamo_params
      params.require(:prestamo).permit(:nombre, :monto, :tipo)
    end

end


