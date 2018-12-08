# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class Show < Base
          desc "Return User for current token"
          get do
            authorize!
            current_user
          end
        end
      end
    end
  end
end