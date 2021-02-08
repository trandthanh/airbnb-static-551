require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    # récupérer tous les appartements
    # dans le set_flats
    # trouver l'appartement dont l'id (hash) est égal à params[:id]
    @flat = @flats.find { |flat| flat["id"] == params[:id].to_i }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    response = open(url).read
    @flats = JSON.parse(response)
  end
end
