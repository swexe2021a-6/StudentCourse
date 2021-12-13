class ManagementController < ApplicationController
    def index
        @management = Management.all
        logger.debug @management
    end
    def new
        @management = Management.new
    end
    
    def create
        logger.debug "---------------"
        @management = Management.new(subject: params[:management][:subject],
        annual: params[:management][:annual], link: params[:management][:link])
        if @management.valid?
          flash[:notice] = 'データ登録完了'
          @management.save
          redirect_to management_index_path
        else
          render 'new'
        end
    end
    def destroy
        management = Management.find(params[:id])
        if management.destroy
          flash[:notice] = 'データを削除しました'
        end
        redirect_to management_index_path
    end
end
