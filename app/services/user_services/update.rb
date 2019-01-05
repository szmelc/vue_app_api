# frozen_string_literal: true

module UserServices
  class Update < ApplicationService
    attr_reader :user, :params

    def initialize(user, params)
      @user = user
      @params = params
    end

    def call
      update_user
      success(nil, user)
    end

    private

    def update_user
      image = params[:image]
      unless image.nil?
        params = { avatar: image } 
      end
      user.update(params)
    end
  end
end
