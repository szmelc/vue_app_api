class ApplicationController < ActionController::Base
  include TokenAuthenticatable
  include AdminAuthorizable
end
