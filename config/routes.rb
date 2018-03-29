Rails.application.routes.draw do
  devise_for :users
  root 'diaries#index'                        #日記一覧をルートパスに指定する
  get 'diaries'     => 'diaries#index'        #日記一覧画面（トップページ）
  get 'diaries/new' => 'diaries#new'          #日記投稿画面
  post 'diaries'    => 'diaries#create'       #日記投稿機能
  delete 'diaries/:id' => 'diaries#destroy'   #日記の削除
  get 'users/:id'   => 'users#show'           #マイページ画面

end
