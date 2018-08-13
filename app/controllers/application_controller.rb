class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
   
  before_action :set_locale
  
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
end
