class UsersController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @users = User.all
      json_response(@users)
    end
  
    # POST /Establecimiento
    def create
      @users = User.create!(todo_params)
      json_response(@users, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@users)
    end
  
    # PUT /todos/:id
    def update
      @users.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @users.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:nombre, :apellido, :correo, 
      :documento, :tipodoc, :telefono, :rol, :estado,
      :descripcion, :calificacion, :estadoGuia)
    end
  
    def set_todo
      @users = User.find(params[:id])
    end
end
