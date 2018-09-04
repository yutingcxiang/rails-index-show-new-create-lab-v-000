class CouponsController < ApplicationController
  def index
    @coupon = Coupon.all
  end
  
  def show
end
