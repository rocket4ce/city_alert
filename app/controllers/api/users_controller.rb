class Api::UsersController < ApplicationController

  before_action :set_action, only: [:show]

  def create
   usuario = User.find_by_email(params[:email])

   if usuario.password == params[:password]
     render json: {mensaje: 'Usuario loguado'}, status: :ok
   else
     render json: {mensaje: 'No pudimos procesar el login'}, status: :unauthorized
   end

  end


end
