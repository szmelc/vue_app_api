module UserServices
  class UploadAvatarService
    attr_reader :avatar, :user

    def initialize(user, avatar)
      @user = user
      @avatar = avatar
    end

    def call
      binding.pry
    end
  end
end