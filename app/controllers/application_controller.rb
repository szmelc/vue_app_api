# frozen_string_literal: true

class ApplicationController < ActionController::Base
  module AdminAuthorizable
    extend ActiveSupport::Concern

    included do
      rescue_from NotPermittedException, with: -> { render json: { error: "Not Permitted" }, status: :forbidden }
    end

    def authorize!(action)
      raise NotPermittedException if action != :read && !current_user.admin?

      true
    end
  end

  module TokenAuthenticatable
    extend ActiveSupport::Concern

    included do
      attr_reader :current_user

      before_action :authenticate_user

      rescue_from NotAuthorizedException, with: -> { render json: { error: "Not authorized" }, status: :unauthorized }
    end

    private

    def authenticate_user
      @current_user = DecodeAuthenticationCommand.call(request.headers).result
      raise NotAuthorizedException unless @current_user
    end
  end
end
