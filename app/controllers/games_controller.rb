class GamesController < ApplicationController
  def index
    render Game.all.as_json
  end
end
