class CartsController < ApplicationController
  def index
    @cart = @current_cart
  end

  def show; end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    flash[:success] = "Deleted cart"
    redirect_to carts_path
  end
end
