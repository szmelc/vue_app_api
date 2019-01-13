# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true

  mount_uploader :avatar, UserAvatarUploader
end
