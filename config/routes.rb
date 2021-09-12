Rails.application.routes.draw do
 

  devise_for :users

  root to: 'users#index'

  resources :users do 
    resources :file_records
  end

  get '/s/:slug', to: 'links#show', as: :short

end
