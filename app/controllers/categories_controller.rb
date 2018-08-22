class CategoriesController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /Establecimiento
    def index
      @categories = Category.all
      json_response(@categories)
    end
  
    # POST /Establecimiento
    def create
      @categories = Category.create!(todo_params)
      json_response(@categories, :created)
    end
  
    # GET /establecimientos/:id
    def show
      json_response(@categories)
    end
  
    # PUT /todos/:id
    def update
      @categories.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @categories.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:tipoest)
    end
  
    def set_todo
      @categories = Category.find(params[:id])
    end
end
