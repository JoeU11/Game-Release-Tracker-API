class GamesController < ApplicationController
  def index
    render json: Game.all.as_json
  end

  def show
    render json: Game.find(params[:id]).as_json
  end

  def create
    game = Game.new(name: params[:name], description: params[:description], anticipation: params[:anticipation])
    if params[:year]
      game.release_date = DateTime.new(params[:year], params[:month], params[:day])
    end
    game.save
    render json: game.as_json
  end

  def update
    game = Game.find(params[:id])
    game.name = params[:name] || game.name
    game.description = params[:description] || game.description
    if params[:year]
      game.release_date = DateTime.new(params[:year], params[:month], params[:day]) || game.release_date
    end
    game.anticipation = params[:anticipation] || game.anticipation
    game.save
    render json: game.as_json
  end

  def destroy
    Game.find(params[:id]).destroy
    render json: {message: "Game has been removed"}
  end
end
