Rails.application.routes.draw do

  root to: 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  resources :users, only: [:new, :create]

  resources :tasks, only: [:create, :show, :edit, :update, :destroy]
  
  #resources :messagesは下記の意
  # CRUD
  #get 'messages/:id', to: 'messages#show'
  #post 'messages', to: 'messages#create'
  #put 'messages/:id', to: 'messages#update'
  #delete 'messages/:id', to: 'messages#destroy'

  # index: show の補助ページ
  #get 'messages', to: 'messages#index'

  # new: 新規作成用のフォームページ
  #get 'messages/new', to: 'messages#new'

  # edit: 更新用のフォームページ
  #get 'messages/:id/edit', to: 'messages#edit'

end
