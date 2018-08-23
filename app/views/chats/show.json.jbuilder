json.extract! @chat, :id, :message, :name, :chatroom_id
json.url chat_url(@chat, format: :json)
