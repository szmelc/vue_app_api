# frozen_string_literal: true

module API
  module V1
    module Users
      module Me
        class Create < Base
          namespace :create do
            desc "Create a user"
            params do
              requires :email, type: String, desc: "User's email address"
              requires :first_name, type: String, desc: "User's first name"
              requires :last_name, type: String, desc: "User's last name"
              requires :password, type: String, desc: "User's password"
              requires :password_confirmation, type: String, desc: "User's password confirmation"
            end
            post do
              # TODO write specs
              data = declared(params)
              result = UserServices::Create.new(data).call
              render result.data
            end
          end
        end
      end
    end
  end
end
