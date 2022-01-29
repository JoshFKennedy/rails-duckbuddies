Rails.application.routes.draw do
  devise_for :users
  root to: 'ducks#index'
  resources :ducks, only: %i[index show] do
    resources :booking, only: %i[index new create show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
