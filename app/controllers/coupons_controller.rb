class CouponsController < ApplicationController
  def index
    @coupon = Coupon.all
  end
  
  def show
    @coupon = Coupon.find_by(id: params[:id])
  end
  
  def new
    @coupon = Coupon.new
  end
  
  def create
    @Coupon = Coupon.new
    @Coupon.coupon_code = params[:coupon_code]
    @Coupon.store = params[:store]
    @Coupon.save
    redirect_to coupon_path(@coupon)
  end
end
