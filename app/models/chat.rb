class Chat < ApplicationRecord
  after_create :notify_pusher
  belongs_to :chatroom

  def notify_pusher
    Pusher.trigger("chat", "new-chat", self.as_json)
  end
end
