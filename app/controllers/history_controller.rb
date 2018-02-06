class HistoryController < ApplicationController
  def index
    render json: {images: History.all}, status: 200
  end
end
