class GcapacitiesController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @gcapacities = Gcapacity.all
      json_response(@gcapacities)
    end
  
    # POST /Establecimiento
    def create
      @gcapacities = Gcapacity.create!(todo_params)
      json_response(@gcapacities, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@gcapacities)
    end
  
    # PUT /todos/:id
    def update
      @gcapacities.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @gcapacities.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:descripcion)
    end
  
    def set_todo
      @gcapacities = Gcapacity.find(params[:id])
    end
end
