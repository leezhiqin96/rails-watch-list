class ListsController < ApplicationController
  # GET lists/
  def index
    @lists = List.all
  end

  # GET lists/:id
  def show
  end

  # GET lists/new
  def new
  end

  # POST lists/
  def create
  end
end
