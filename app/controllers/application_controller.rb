class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  #defining and calling the braintree gateway
end
