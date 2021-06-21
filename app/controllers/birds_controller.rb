class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
  end

  def show
    if bird = Bird.find_by(id: params[:id])
      render json: bird
    else
      render json: { message: 'Bird not found' }
    end
  end
end