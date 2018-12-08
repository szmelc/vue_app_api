module API
  module V1
    module Users
      module Me
        class UserSerializer < ActiveModel::Serializer
          attributes :id, :email, :first_name, :last_name
        end
      end
    end
  end
end