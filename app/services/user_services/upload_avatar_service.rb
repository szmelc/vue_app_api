module UserServices
  class UploadAvatarService
    attr_reader :avatar, :user

    def initialize(user, avatar)
      @user = user
      @avatar = avatar
    end

    def call
      upload_avatar
    end

    private

    def upload_avatar
      user.avatar = avatar
      user.save
    end
  end
end