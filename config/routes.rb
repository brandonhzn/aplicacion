Rails.application.routes.draw do
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do 
    resources :gservices
    resources :gcapacities
    resources :results
end
resources :places do
    resources :results
end
resources :categories do
    resources :places
end
resources :services do
    resources :gservices

end
resources :capacities do
    resources :gcapacities
end

post 'auth/login', to: 'authentication#authenticate'
post 'signup', to: 'users#create'

end
