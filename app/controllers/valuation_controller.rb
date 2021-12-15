class ValuationController < ApplicationController
    def index
        @valuation = Valuation.all
        @management = Management.all
    end
    def indexView
        @valuation = Valuation.all
        @management = Management.all
    end
    def new
        @valuation = Valuation.new
    end
    
    def create
        user = User.find_by(student_num: current_user.student_num)
        #management = Management.find[:id](params[:id])
        logger.debug params
        @valuation = Valuation.new(comment: params[:valuation][:comment], star: params[:valuation][:star],
                                    user_id: user.id, tdate: Time.current, subject: params[:id])
        logger.debug "--------"
        if @valuation.save
          #TODO: ツイートが成功したことをユーザに知らせる
          flash[:notice] = '評価登録完了！'
          redirect_to valuation_index_path
        else
          render 'new'
        end
    end
end
