class PagosController < ApplicationController

	def create
    	@prestamo = Prestamo.find(params[:prestamo_id])
    	@pago = @prestamo.pagos.create(pago_params)
    	redirect_to prestamo_path(@prestamo)
  	end
 	
  def destroy
		@pago = Pago.find(params[:id])
		@pago = @prestamo.pagos.destroy
		redirect_to prestamo_path(@prestamo)
	end
 	
  
  private
    def pago_params
      params.require(:pago).permit(:cuota)
    end
end

