class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :gamer

  validates_presence_of :body, :conversation_id, :gamer_id
end
