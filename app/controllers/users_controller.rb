class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname 
#    ↓アソシエーションを使用しないでdiariesを取得する記述
#    @diaries  = Diary.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
    @diaries  = current_user.diaries.page(params[:page]).per(5).order("created_at DESC")
  end
end