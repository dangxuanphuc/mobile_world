class ChatsController < ApplicationController
  before_action :logged_in_user, only: [:index, :new, :show]
  before_action :admin_user, only: [:index, :new, :show]

  def index
    @chatrooms = Chatroom.all
  end

  def create
    @chat = Chat.new(chat_params)
    respond_to do |format|
      if @chat.save
        format.json{render :show, status: :created, location: @chat}
      else
        format.json{render json: @chat.errors, status: :unprocessable_entity}
      end
    end
  end

  def new
    @chat = Chat.new
  end

  def show
    @chats = Chat.where(chatroom_id: params[:id])
    respond_to do |format|
      if @chats
        format.json{render :chats, status: :ok}
      else
        format.json{render json: @chats.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def chat_params
    params.require(:chat).permit :message, :name, :chatroom_id
  end

  def logged_in_user
    return if logged_in?
    store_location
    flash.now[:danger] = t "controllers.application_controllers.login_check"
    redirect_to login_url
  end

  def admin_user
    redirect_to root_url unless current_user.admin?
  end
end
