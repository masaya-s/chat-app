Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create] # ネストにすると、チャットルームに属しているメッセージという意味になる
  end
end