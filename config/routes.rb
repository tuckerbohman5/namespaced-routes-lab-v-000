Rails.application.routes.draw do

  namespace :admin do 
    resources :settings, only: [:index, :create, :update]
    resources :access, only: [:index, :update]
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end
