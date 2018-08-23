json.extract! @chatroom, :id, :name, :email
json.url chatroom_url(@chatroom, format: :json)
