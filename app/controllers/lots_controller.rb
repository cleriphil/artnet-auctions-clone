class LotsController < ApplicationController
  def new
    @auction =
  end

  def create
    @auction =

  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def lot_params
    params.require(:lot).permit(:artwork_title, :artwork_date, :description, :estimate, :opening_bid, :current_bid, :number_of_bids)
  end

end
