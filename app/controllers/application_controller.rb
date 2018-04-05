class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(_resource)
    r_all_path
  end
    def redirect_if_logged_in
    redirect_to r_all_path if current_user
  end
end
