class SquaresController < ApplicationController
  respond_to :json

  def index
    @squares = Square.all.order(game_time: :asc)
  end

  def create
    return render 'show', status: 403 unless current_user.admin?
    Square.new(home: params[:home], away: params[:away], game_time: params[:game_time])
  end

  def show
    @square = Square.find(params[:id])
  end
end
