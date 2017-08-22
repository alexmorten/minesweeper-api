Rails.application.routes.draw do
  resources :fields
  resources :savegames do
    resources :fields, module: 'savegames',only: [:index,:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
