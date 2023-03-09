class ListsController < ApplicationController
  # GET lists/
  def index
    @lists = List.all
  end

  # GET lists/:id
  def show
    @list = List.find(params[:id])
    @movies_in_list = @list.movies
  end

  # GET lists/new
  def new
    @list = List.new
    @movies = Movie.all
  end

  # POST lists/
  def create
    @list = List.new(list_params)
    @list.save
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
