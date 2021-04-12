Rails.application.routes.draw do
  # devise_for :clients
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  post 'authenticate', to: 'authentication#authenticate'
  get 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
