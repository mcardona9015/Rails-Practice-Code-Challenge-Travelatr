class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show]

  def index
    @destinations = Destination.all
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.create(destination_params(:name, :country))
    redirect_to destination_path(@destination)
  end

  def show
  end

  private

  def set_destination
    @destination = Destination.find(params[:id])
  end

  def destination_params(*args)
    params.require(:destination).permit(*args)
  end
end
