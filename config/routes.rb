Rails.application.routes.draw do
  root "articles#index"

  get 'terms', to: 'terms#show'
  get 'about', to: 'about#show'
  resource :contacts, only: %i[new create], path_names: { new: '' }
  resources :articles, only: %i[index new create show edit update]

end
