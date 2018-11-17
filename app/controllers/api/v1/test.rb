module API  
  module V1
    class Test < Grape::API
      include API::V1::Defaults

      namespace :test do
        desc "Return all graduates"
        get do
          puts 'test'
        end
      end
    end
  end
end  