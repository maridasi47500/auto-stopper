class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :myuser
  def myuser
    cookies.encrypted[:user_id]=current_user.try(:id)
  end
end
