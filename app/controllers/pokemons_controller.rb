class PokemonsController < ApplicationController
  def index

    if params[:query].present?
      @pokemons = Pokemon.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @pokemons = Pokemon.all
    end

    respond_to do |format|
      format.html
      format.turbo_stream 
    end
  end

  def show
  end
end
