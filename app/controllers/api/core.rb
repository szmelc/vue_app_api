# frozen_string_literal: true

module API
  class Core < Grape::API
    helpers API::UserHelpers
    helpers API::ResponseHelpers
    prefix :api
    format :json
    default_format :json
    formatter :json, Grape::Formatter::ActiveModelSerializers
    error_formatter :json, Grape::Formatter::ActiveModelSerializers

    helpers do
      def permitted_params
        @permitted_params ||= declared(params,
                                       include_missing: false)
      end

      def logger
        Rails.logger
      end

      def authorize!
        unauthorized if !current_user && !current_user.admin?
        true
      end
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      error_response(message: e.message, status: 404)
    end

    rescue_from ActiveRecord::RecordInvalid do |e|
      error_response(message: e.message, status: 422)
    end

    mount API::V1::Base
    add_swagger_documentation(
      api_version: "v1",
      hide_documentation_path: true,
      mount_path: "/api/v1/swagger_doc.json",
      hide_format: true
    )
  end
end
