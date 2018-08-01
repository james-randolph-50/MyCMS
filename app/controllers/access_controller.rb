class AccessController < ApplicationController

  layout 'admin'

  def menu
  end

  def login
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
  end

  if authorized_user
    session[:user_id] = authorized_user.id
    flash[:notice] = "You are now logged in."
    redirect_to(admin_path)
  else
    flash.now[:notice] = "invalid username/password combo"
    render('login')
  end

  def logout
  end

end
