# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class Update < Base
          namespace :update do
            desc "Update current user for current token"
            post do
              authorize!
              result = UserServices::Update.new(current_user, params).call
              render result.data
            end
          end
        end
      end
    end
  end
end
