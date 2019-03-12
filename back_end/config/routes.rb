Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :cars
      resources :prices
      resources :warranties
      resources :pictures
      resources :fuels
      resources :depreciations
      post '/login' => 'sessions#create'
      post '/register' => 'users#create'
      resources :comparisons
      resources :maintenances
      resources :users, except: [:create]
      resources :repairs

    end
  end
end
