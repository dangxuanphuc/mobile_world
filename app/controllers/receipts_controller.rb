class ReceiptsController < ApplicationController
  before_action :current_receipt, only: :show
  before_action :admin_user, only: :index

  def index
    @receipts = Receipt.all.page(params[:page]).per Settings.paginate_size
  end

  def new
    @receipt = Receipt.new
  end

  def create
    @receipt = Receipt.new receipt_params
    @receipt.cart_id = current_cart.id
    @receipt.user = current_user
    # @receipt.total_price = @current_cart.total_price
    @receipt.status = true
    if @receipt.save
      flash[:success] = t ".success"
      @current_cart.destroy
      redirect_to @receipt
    end
  end

  def show; end

  private

  def receipt_params
    params.require(:receipt).permit :cart_id, :user_id,
      :payment_code
  end

  def current_cart
    if session[:cart_id]
      cart = Cart.find_by user_id: session[:user_id]
      cart.present? ? @current_cart = cart : session[:cart_id] = nil
    else
      @current_cart = Cart.create if current_user.nil?
      @current_cart = Cart.new(user_id: current_user.id) unless
        @current_cart.present?
      session[:cart_id] = @current_cart.id
      @current_cart.save
      Cart.where(user_id: :nil).destroy_all
    end
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end

  def current_receipt
    @receipt = Receipt.find_by id: params[:id]
  end
end
