Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :cars
      post '/login' => 'sessions#create'
      post '/register' => 'users#create'
    end
  end  
end
