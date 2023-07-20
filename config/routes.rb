Rails.application.routes.draw do
  root "home#index"

  get 'terms', to: 'terms#show'
  resource :contacts, only: %i[new create], path_names: { new: '' }
end
