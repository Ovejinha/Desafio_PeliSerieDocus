class SeriesController < ApplicationController
  def index
    @series = Serie.all
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      flash[:notice] = "La serie se creó exitosamente."
      redirect_to series_index_path
    else
      render :new
    end
  end

  def new
    @series = Serie.all
    @serie = Serie.new
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
