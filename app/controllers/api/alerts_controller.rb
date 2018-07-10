class Api::AlertsController < ApplicationController

  before_action :set_action, only: [:show]

  def create
   @alerta = Alert.new(alerta_params)

   if @alerta.save
     render json: {mensaje: 'Alerta Creada'}, status: :ok
   else
     render json: {mensaje: 'No pudimos procesar la alerta'}, status: :ok
   end

  end

  def show
  end


  private
    def set_action
      @alerta = Alert.find(params[:id]) 
    end

    def alerta_params
      params.require(:alert).permit(:imagen, :latitude, :longitude, :address)
    end
end
