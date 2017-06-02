class Post < ApplicationRecord
  belongs_to :gamer

  mount_uploader :attachment, AvatarUploader

  include PublicActivity::Model
  tracked only: [:create], owner: proc { |controller, model| controller.current_gamer }
end
