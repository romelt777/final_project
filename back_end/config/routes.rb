Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :cars, only: [:index, :create]
      resources :prices, only: [:index]
      resources :warranties, only: [:index]
      resources :pictures, only: [:index]
      resources :fuels, only: [:index]
      resources :depreciations, only: [:index]
      post '/login' => 'sessions#create'
      post '/register' => 'users#create'
      resources :comparisons, only: [:index, :show, :create]
      resources :maintenances, only: [:index]
      resources :users, except: [:create]
      resources :repairs, only: [:index]

    end
  end
end
