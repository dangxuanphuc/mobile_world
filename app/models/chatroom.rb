class Chatroom < ApplicationRecord
  after_create :notify_pusher
  has_many :chats
  default_scope -> { order(created_at: :desc) }

  def notify_pusher
    Pusher.trigger("chat", "new-chatroom", self.as_json)
  end
end
