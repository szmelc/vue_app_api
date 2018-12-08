module API
  module V1
    module Users
      module Me
        class UserSerializer < ActiveModel::Serializer
          attributes :id, :email
        end
      end
    end
  end
end