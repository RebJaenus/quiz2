class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :genre, :format)
  end


end
