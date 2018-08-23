json.chats @chats do |chat|
  json.(chat, :id, :name, :message, :chatroom_id)
end
