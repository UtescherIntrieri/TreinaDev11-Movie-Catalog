class HomeController < ApplicationController
  def index
    @movies = Movie.released
  end

  def list_genres
    @genres = Genre.all
  end

  def list_directors
    @directors = Director.all
  end
end