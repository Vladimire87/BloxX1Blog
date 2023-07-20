Rails.application.routes.draw do
  get 'terms/show'
  root "home#index"

  get 'terms', to: 'terms#show'
  resource :contacts, only: %i[new create], path_names: { new: '' }
end
