Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }

  root 'posts#index'
  get '/users/:id', to: 'users#show', as: 'user' # asオプションでルーティングに名前を付けている。user_pathというメソッドが生成され、コントローラー・ヘルパー・ビューで使えるようになる。

  resources :posts, only: [:new, :create, :index, :show, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end
