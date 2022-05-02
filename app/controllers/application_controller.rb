class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery
  after_action :user_activity, if: :user_signed_in?

  include Pundit
  # after_action :user_activity
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_activity
    current_user.try :touch
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_back(fallback_location: root_path)
  end
end
