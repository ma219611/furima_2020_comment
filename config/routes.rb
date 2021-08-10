Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root to: "items#index"
  resources :items do
    resources :orders, only: [:index, :create]
    resources :comments, only: :create     # 追記
  end
end
