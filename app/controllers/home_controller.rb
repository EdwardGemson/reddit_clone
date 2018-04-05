class HomeController < ApplicationController
  before_action :authenticate_user!, only: %i(r_all)
  before_action :redirect_if_logged_in, only: %i(index)
  def r_all
  	@posts = Post.all 
  end
  def index 
  end

end
