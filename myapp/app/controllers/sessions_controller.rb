class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    db_user = User.find_by_name(@user.name)

    if db_user && db_user.check_password(params[:user][:password])
      sign_in(db_user)
    else
      @errormsg = 'Invalid username or password'
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to homepage_path
  end

end
