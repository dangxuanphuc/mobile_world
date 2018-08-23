class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatrooms do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end