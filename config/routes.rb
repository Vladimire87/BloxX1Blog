Rails.application.routes.draw do
  root "home#index"

  get 'terms', to: 'terms#show'
  get 'about', to: 'about#show'
  resource :contacts, only: %i[new create], path_names: { new: '' }
  resources :article, only: %i[new create show]

end
