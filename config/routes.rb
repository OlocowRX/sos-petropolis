Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :campaigns, only: %i[index show new create], shallow: true do
    resources :donations, only: %i[new create destroy]
  end
end
