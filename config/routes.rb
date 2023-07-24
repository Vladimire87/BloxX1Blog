Rails.application.routes.draw do
  devise_for :users
  root "articles#index"

  get 'terms', to: 'terms#show'
  get 'about', to: 'about#show'
  resource :contacts, only: %i[new create], path_names: { new: '' }
  resources :articles do
    resources :comments, only: %i[create]
  end

end
