class SquareBoxesController < ApplicationController
  respond_to :json

  def index
    @boxes = SquareBox.where(square_id: params[:square])
  end

  def update
  end
end
