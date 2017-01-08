class SquareBoxesController < ApplicationController
  respond_to :json

  def index
    @boxes = SquareBoxes.find(square_id: params[:square])
  end

  def update

  end
end
