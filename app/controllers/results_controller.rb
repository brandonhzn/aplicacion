class ResultsController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /results
    def index
      @results = Result.all
      json_response(@results)
    end
  
    # POST /results
    def create
      @results = Result.create!(todo_params)
      json_response(@results, :created)
    end
  
    # GET /results/:id
    def show
      json_response(@results)
    end
  
    # PUT /todos/:id
    def update
      @results.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @results.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:valor)
    end
  
    def set_todo
      @results = Result.find(params[:id])
    end
end
