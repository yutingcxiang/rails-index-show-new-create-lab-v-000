class CouponsController < ApplicationController
  def index
    @coupon = Coupon.all
  end
  
  def show
    @coupon = Coupon.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
  end
end
