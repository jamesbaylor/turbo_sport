class Message < ApplicationRecord 
  belongs_to :room
  
  after_create_commit -> { broadcast_prepend_to "messages", partial: "messages/message", locals: { message: self } }
  after_update_commit -> { broadcast_replace_to @message }
  after_destroy_commit -> { broadcast_remove_to @message }
end
