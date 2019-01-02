# frozen_string_literal: true

module API
  module V1
    module Users
      class Base < Base
        resource :users do
          namespace :me do
            mount Users::Me::Show
            mount Users::Me::Update
          end
        end
      end
    end
  end
end
