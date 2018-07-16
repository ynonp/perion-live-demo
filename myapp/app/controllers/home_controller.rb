class HomeController < ApplicationController
  def index
    @usercount = User.all.count
  end

  private

  def go
  end
end
