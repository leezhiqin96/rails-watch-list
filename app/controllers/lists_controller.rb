class ListsController < ApplicationController
  # GET lists/
  def index
    @lists = List.all
  end

  # GET lists/:id
  def show
    @list
  end

  # GET lists/new
  def new
  end

  # POST lists/
  def create
  end

  private

  def set_list
    @list = List.find(params[:id])
  end
end
