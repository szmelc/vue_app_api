# frozen_string_literal: true

module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      namespace :users do
        params do
          requires :id, type: Integer, desc: "User id"
        end
        route_param :id do
          get do
            authorize! :read
            User.first
          end
        end
      end
    end
  end
end