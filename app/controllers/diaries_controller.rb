class DiariesController < ApplicationController
  
  before_action :move_to_index, except: :index
  
  def index
    @diaries = Diary.all.order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
  end
  
  def create
    Diary.create(diary_params)
  end
  
  private
  def diary_params
    params.permit(:title, :author, :publisher, :public_flag, :impression, :impression_public_flag, :memo, :memo_public_flag, :action, :action_public_flag, :reco_for, :reco_for_public_flag)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
