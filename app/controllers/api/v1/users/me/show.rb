# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class Show < Base
          desc "Return current user"
          get "/", serializer: UserSerializer do
            authorize!
            current_user
          end
        end
      end
    end
  end
end
