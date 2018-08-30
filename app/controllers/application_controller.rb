class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  before_action :set_locale
  before_action :current_user, only: :current_cart
  before_action :current_cart

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def require_login
    
    return if logged_in?
    flash[:danger] = t ".login_check"
    redirect_to login_url
  end

  def current_user
    @current_user = User.find_by id: session[:user_id]
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

  def current_receipt
    if session[:receipt_id]
      receipt = Receipt.find_by user_id: session[:user_id]
      receipt.present? ? @current_receipt = receipt : session[:receipt_id] = nil
    else
      @current_receipt = Receipt.create if current_user.nil?
      @current_receipt = Receipt.new(user_id: current_user.id) unless
        @current_receipt.present?
      session[:receipt_id] = @current_receipt.id
      @current_receipt.save
      Receipt.where(user_id: :nil).destroy_all
    end
  end
end
