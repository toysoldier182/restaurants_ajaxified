Rails.application.routes.draw do
  root to: 'pages#home'

    resources :restaurants, only: [ :index, :show ] do
      resources :reviews, only: [:new, :create]
    end
    resources :reviews, only: :destroy

end
