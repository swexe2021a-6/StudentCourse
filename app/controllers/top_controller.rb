class TopController < ApplicationController
    def main
        render 'login'
    end

  def login
    user = User.find_by(user: params[:user])
    if user and BCrypt::Password.new(user.pass) == params[:pass]
      flash[:notice] = 'ログイン成功'
      session[:login_user] = user.user
      redirect_to root_path
    else
      flash[:notice] = 'ログイン失敗'
      render 'login'
    end
  end

  def logout
    flash[:notice] = 'ログアウトに成功'
    session.delete(:login_user)
    
    redirect_to root_path
  end
end
