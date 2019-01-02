# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class Update < Base
          namespace :upload_avatar do
            desc "Update current user for current token"
            post do
              authorize!
              avatar = params["image"]
              UserServices::UploadAvatarService.new(current_user, avatar).call
            end
          end
        end
      end
    end
  end
end
