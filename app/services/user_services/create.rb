# frozen_string_literal: true
# TODO write specs

module UserServices
  class Create < ApplicationService
    attr_reader :params

    def initialize(params)
      @params = params
    end

    def call
      create_user
    end

    private

    def create_user
      user = User.new
      user.assign_attributes(params)
      user.save ? success(nil, user) : failure(nil, user)
    end
  end
end
