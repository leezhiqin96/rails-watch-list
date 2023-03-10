class ListsController < ApplicationController
  # GET lists/
  def index
    @lists = List.all
    @default_img = 'https://img.pikbest.com/templates/20211006/bg/9c71a1b738a380bc45e9ebfd63e42172_101418.png!f305cw'
  end

  # GET lists/:id
  def show
    @list = List.find(params[:id])
    @banner_img = @list.image_url
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
    params.require(:list).permit(:name, :image_url)
  end
end
