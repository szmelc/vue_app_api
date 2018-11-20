module API  
  module V1
    class Base < Grape::API
      mount API::V1::Test
      mount API::V1::Auth
    end
  end
end  