Rails.application.routes.draw do
	resources :charges
  root 'static#home' 
  get '/cursus', 		to: 'static#cursus'
  get '/faq', 			to: 'static#faq'
  get '/philosophie', 	to: 'static#philosophie'
  get '/inscription',	to: 'static#inscription'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact', to: 'messages#new'
  post '/contact', to: 'messages#create'
end
