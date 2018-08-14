class CartItemsController < ApplicationController
  before_action :find_cart_item, only: [:add_quantity, :reduce_quantity,
    :destroy]

  def create
    chosen_product = Product.find_by id: params[:product_id]
    current_cart = @current_cart

    if current_cart.products.include?(chosen_product)
      @cart_item = current_cart.cart_items.find_by product_id: chosen_product
      @cart_item.quantity += 1
    else
      @cart_item = CartItem.new
      @cart_item.cart = current_cart
      @cart_item.product = chosen_product
      @cart_item.quantity = 1
      @cart_item.price = chosen_product.price
      @cart_item.total_price = @cart_item.price * @cart_item.quantity
    end

    @cart_item.save
    session[:cart_id] = current_cart.id
    redirect_to carts_path
  end

  def add_quantity
    @cart_item.quantity = @cart_item.quantity + 1
    @cart_item.total_price = @cart_item.price * @cart_item.quantity
    @cart_item.save
    redirect_to carts_path
  end

  def reduce_quantity
    @cart_item.quantity = @cart_item.quantity - 1 if @cart_item.quantity > 1
    @cart_item.total_price = @cart_item.price * @cart_item.quantity
    @cart_item.save

    redirect_to carts_path
  end

  def destroy
    @cart_item.destroy
    flash[:success] = t ".delete_cart_item"
    redirect_to carts_path
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :product_id, :cart_id)
  end

  def find_cart_item
    @cart_item = CartItem.find_by id: params[:id]
  end
end
