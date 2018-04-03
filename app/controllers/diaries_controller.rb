class DiariesController < ApplicationController
  
  before_action :move_to_index, except: [:index, :show]
  
  def index
    @diaries = Diary.includes([:user, :genre]).order("created_at DESC").page(params[:page]).per(5)
  end
  
  def new
    @genres = Genre.all
  end
  
  def create
    Diary.create(title: diary_params[:title], author: diary_params[:author], publisher: diary_params[:publisher], genre_id: params[:genre][:genre_id], public_flag: diary_params[:public_flag], impression: diary_params[:impression], impression_public_flag: diary_params[:impression_public_flag], memo: diary_params[:memo], memo_public_flag: diary_params[:memo_public_flag], action: diary_params[:action], action_public_flag: diary_params[:action_public_flag], reco_for: diary_params[:reco_for], reco_for_public_flag: diary_params[:reco_for_public_flag], user_id: current_user.id)
  end
  
  def destroy
    diary = Diary.find(params[:id])
    if diary.user_id == current_user.id
      diary.destroy
    end
  end
  
  def edit
    @diary = Diary.find(params[:id])
    @genres = Genre.all
  end
  
  def update
    diary = Diary.find(params[:id])
    if diary.user_id == current_user.id
      diary.update(diary_params)
      diary.update(:genre_id => params[:genre][:genre_id])
    end
  end
  
  def show
    @diary = Diary.find(params[:id])
  end
  
  private
  def diary_params
      params.permit(:title, :author, :publisher, :public_flag, :impression, :impression_public_flag, :memo, :memo_public_flag, :action, :action_public_flag, :reco_for, :reco_for_public_flag)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
