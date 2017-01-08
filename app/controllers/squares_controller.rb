class SquaresController < ApplicationController
  respond_to :json

  def index
    @squares = Squares.all.order(game_time: :asc)
  end

  def create
    return render 'show', status: 403 unless current_user.admin?
    Square.new(team1: params[:team1], team2: params[:team2], game_time: params[:game_time])
  end

  def show
    @square = Square.find(id: params[:id])
  end
end
