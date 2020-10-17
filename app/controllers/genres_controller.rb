class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find_by(params[:id])
  end

  def edit
    @genre = Genre.find_by(params[:id])
  end

  def update
    @genre = Genre.find_by(params[:id])
    @genre.update(genres_params)
    redirect_to genre_path(@genre)
  end

  private

  def genres_params
    params.require(:genre).permit(:name)
  end
end
