# frozen_string_literal: true

module API
  module V1
    class Base < Core
      version "v1", using: :path, vendor: "vue_app_example"
      content_type :json, "application/vnd.api+json"

      log_requests = Rails.env.development? || ENV["LOG"]
      mount API::V1::Auth
      mount Users::Base
    end
  end
end