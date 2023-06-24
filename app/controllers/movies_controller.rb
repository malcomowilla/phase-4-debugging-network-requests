class MoviesController < ApplicationController
  def create
    movie = Movie.create(bird_params)
    render json: movie
  end
  def index
    movies = Movie.all
    render json: movies
  end
private
  def bird_params
    params.permit(:title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director)
  end



end
