class DocumentaryFilmsController < ApplicationController
  def index
    @documentary_films = DocumentaryFilm.all
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)
    if @documentary_film.save
      puts "Documentary film saved successfully!"
      flash[:notice] = "El documental se creó exitosamente."
      redirect_to documentary_films_index_path
    else
      render :new
    end
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end
  private

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end

end
