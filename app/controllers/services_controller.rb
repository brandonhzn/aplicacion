class ServicesController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @services = Service.all
      json_response(@services)
    end
  
    # POST /Establecimiento
    def create
      @services = Service.create!(todo_params)
      json_response(@services, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@services)
    end
  
    # PUT /todos/:id
    def update
      @services.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @services.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:tipo)
    end
  
    def set_todo
      @services = Service.find(params[:id])
    end
end
