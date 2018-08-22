class UsersController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]
    skip_before_action :authorize_request, only: :create
    # GET /user
    def index
      @users = User.all
      json_response(@users)
    end
  
    # POST /user
    def create
      @users = User.create!(todo_params)
      auth_token = AuthenticateUser.new(@users.email, @users.password).call
      response = { message: Message.account_created, auth_token: auth_token }
      json_response(response, :created)
      #json_response(@users, :created)
    end
  
    # GET /users/:id
    def show
      json_response(@users)
    end
  
    # PUT /users/:id
    def update
      @users.update(todo_params)
      head :no_content
    end
  
    # DELETE /users/:id
    def destroy
      @users.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:nombre, :apellido, :email, 
      :documento, :tipodoc, :telefono, :rol, :estado,
      :descripcion, :calificacion, :estadoGuia, :password)
    end
  
    def set_todo
      @users = User.find(params[:id])
    end
end
