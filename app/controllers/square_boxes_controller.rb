class SquareBoxesController < ApplicationController
  respond_to :json
  before_action :load_box, only: [:update, :destroy]

  def index
    @boxes = SquareBox.where(square_id: params[:square])
  end

  def update
    @box.name = params[:name]
    return invalid_resource!(@box.errors) unless @box.update(update_params)
    render 'show'
  end

  def destroy
    return invalid_resource!(@box.errors) unless @box.update(destroy_params)
    head :no_content, status: :ok
  end

  private

  def load_box
    @box = SquareBox.find(params[:id])
  end

  def update_params
    p = params.permit(:name).merge(user_id: current_user.try(:id))
  end

  def destroy_params
    {
      user_id: nil,
      name: nil
    }
  end
end
