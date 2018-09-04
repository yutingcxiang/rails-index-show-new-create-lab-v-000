class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end
  
  def show
    @coupon = Coupon.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
    @Coupon = Coupon.new
    @Coupon.coupon_code = params[:coupon][:coupon_code]
    @Coupon.store = params[:coupon][:store]
    @Coupon.save
    redirect_to coupons_path(@coupon)
  end
end
