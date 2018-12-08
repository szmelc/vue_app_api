# frozen_string_literal: true

module API
  module V1
    class Auth < Grape::API
      include API::V1::Defaults

      namespace :auth do
        desc "Return all graduates"
        params do
          requires :email, type: String, desc: "User's email address"
          requires :password, type: String, desc: "User's password"
        end
        post do
          token_command = AuthenticateUserCommand.call(*params.slice(:email, :password).values)
          if token_command.success?
            { token: token_command.result }
          else
            errors(token_command.errors)
          end
        end
      end
    end
  end
end
