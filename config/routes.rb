Rails.application.routes.draw do
  root to: 'homes#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :searches, only: [:index]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
