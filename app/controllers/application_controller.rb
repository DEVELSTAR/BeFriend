class ApplicationController < ActionController::Base
  rescue_from ActionController::Redirecting::UnsafeRedirectError do
    redirect_to root_path
  end
end
