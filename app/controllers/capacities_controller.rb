class CapacitiesController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @capacities = Capacity.all
      json_response(@capacities)
    end
  
    # POST /Establecimiento
    def create
      @capacities = Capacity.create!(todo_params)
      json_response(@capacities, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@capacities)
    end
  
    # PUT /todos/:id
    def update
      @capacities.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @capacities.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:tipo)
    end
  
    def set_todo
      @capacities = Capacity.find(params[:id])
    end
end
