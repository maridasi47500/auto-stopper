class WelcomeController < ApplicationController
  def index
    @posts=Post.myposts.page(params[:page])
  end
end
