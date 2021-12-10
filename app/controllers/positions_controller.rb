class PositionsController < ApplicationController
  def index
    positions = Position.all

    render json: positions
  end

  def show
    position = Position.find_by(id: params[:id])
    render json: position
  end

  def create
    position = Position.new(
      user_id: params[:user_id],
      asset: params[:asset] + "USDT",
      amount: params[:amount],
    )
    if position.save
      render json: position
    else
      render json: { errors: position.errors.full_messages }, status: :unproccessable_entity
    end
  end

  def update
    position = Position.find_by(id: params[:id])
    if position.user_id == current_user.id
      position.asset = params[:asset] || position.asset
      position.amount = params[:amount] || position.amount
    end
    if position.save
      render json: position
    else
      render json: { errors: position.errors.full_messages }, status: :unproccessable_entity
    end
  end

  def destroy
    position = Position.find_by(id: params[:id])
    if position.user_id == current_user.id
      position.destroy
      render json: {message: "Position successfully destroyed"}
    else
      render json: { errors: position.errors.full_messages }, status: 422
    end
  end
end
