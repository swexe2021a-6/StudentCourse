class ValuationController < ApplicationController
    def index
        @valuation = Valuation.all
    end
    
    def new
        @valuation = Valuation.new
    end
    
    def create
        user = User.find_by(student_num: current_user.student_num)
        @valuation = Valuation.new(comment: params[:valuation][:comment], star: params[:valuation][:star], user_id: user.id)
        if @valuation.save
          #TODO: ツイートが成功したことをユーザに知らせる
          flash[:notice] = '評価登録完了！'
          redirect_to valuation_index_path
        else
          render 'new'
        end
    end
end
