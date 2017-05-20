Rails.application.routes.draw do

	resources :prestamos do
		resources :pagos
	end

	root 'static_pages#home'

	get '/monto', to: 'static_pages#monto'
  	get '/total', to: 'static_pages#total'

  	get '/index', to: 'prestamos#index'
  	get '/new', to: 'prestamos#new'
  	get '/edit', to: 'prestamos#edit'
  	get '/show', to: 'prestamos#show'

end
