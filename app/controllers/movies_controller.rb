class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "La película se creó exitosamente."
      redirect_to movies_index_path
    else
      render :new
    end
  end

  def new
    @movie = Movie.new
  end



  private

  def movie_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
