# frozen_string_literal: true

module Result
  class Base < ApplicationService
    attr_reader :data, :message

    def initialize(message, data)
      @message = message
      @data = data
    end

    def success?
      raise NotImplementedError
    end

    def failure?
      !success?
    end

    # Creates flash hash that can be used in controller redirects.
    def flash
      raise NotImplementedError
    end
  end
end
