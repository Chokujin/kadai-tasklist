Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'toppages/index'
  root to: 'toppages#index'

  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]

  resources :tasks
  
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
