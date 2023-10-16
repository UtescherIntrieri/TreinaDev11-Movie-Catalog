class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(title: params[:movie][:title],
                      year: params[:movie][:year],
                      synopsis: params[:movie][:synopsis],
                      duration: params[:movie][:duration],
                      country: params[:movie][:country],
                      genre_id: params[:movie][:genre_id],
                      director_id: params[:movie][:director_id])
    if @movie.save
      flash[:notice] = 'Filme cadastrado!'
      return redirect_to new_movie_path
    end
    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end
  
  def update
    @movie = Movie.find(params[:id])
    
    if @movie.update(title: params[:movie][:title],
                    year: params[:movie][:year],
                    synopsis: params[:movie][:synopsis],
                    duration: params[:movie][:duration],
                    country: params[:movie][:country],
                    genre_id: params[:movie][:genre_id],
                    director_id: params[:movie][:director_id])
      return redirect_to movie_path(@movie.id)
    end
    render :edit
  end

  def release
    movie = Movie.find(params[:id])
    if movie.status == 'unreleased'
      movie.released!
    else
      movie.unreleased!
    end
    redirect_to movie_path(movie.id)
  end
end