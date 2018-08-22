class GservicesController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @gservices = Gservice.all
      json_response(@gservices)
    end
  
    # POST /Establecimiento
    def create
      @gservices = Gservice.create!(todo_params)
      json_response(@gservices, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@gservices)
    end
  
    # PUT /todos/:id
    def update
      @gservices.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @gservices.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:descripcion)
    end
  
    def set_todo
      @gservices = Gservice.find(params[:id])
    end
end
