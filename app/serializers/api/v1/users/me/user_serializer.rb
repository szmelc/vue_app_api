# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class UserSerializer < ActiveModel::Serializer
          attributes :avatar, :id, :email, :first_name, :last_name

          def avatar
            return if object.avatar.nil?
            object.avatar.url
          end
        end
      end
    end
  end
end
