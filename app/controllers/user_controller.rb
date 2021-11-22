class UserController < ApplicationController
    def index
        @user = User.all
    end
    def register
        render 'register'
    end
    def new
        @user = User.new
    end
    
    def create
        logger.debug "---------------"
        @user = User.new(student_num: params[:user][:student_num],
        password: params[:user][:password],
        password_confirmation: params[:user][:password_confirmation])
        if @user.valid?
          flash[:notice] = 'ユーザ登録完了'
          @user.pass = BCrypt::Password.create(params[:user][:password])
          @user.save
          redirect_to '/'
        else
          render 'new'
        end
    end
    def destroy
        user = User.find(params[:id])
        if user.destroy
          flash[:notice] = 'ユーザを削除しました'
        end
        redirect_to '/'
    end
end
