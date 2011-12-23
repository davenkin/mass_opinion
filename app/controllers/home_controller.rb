class HomeController < ApplicationController
  def index
    @user = User.find(:first)
  end

end
