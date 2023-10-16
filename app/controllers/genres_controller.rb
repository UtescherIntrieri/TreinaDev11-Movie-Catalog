class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(name: params[:genre][:name])
    if @genre.save
      flash[:notice] = 'Gênero cadastrado!'
      return redirect_to new_genre_path
    end
    render :new
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    
    if @genre.update(name: params[:genre][:name])
      return redirect_to genre_path(@genre.id)
    end
    render :edit
  end
end