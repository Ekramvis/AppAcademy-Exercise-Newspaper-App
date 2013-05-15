NewspaperApp::Application.routes.draw do
	root to: "users#new"
	resources :newspapers do
		member do
			resources :subscription_plans, only: [:new, :create]
		end
	end

	resources :users
	resource :session

	match '/login', to: "sessions#new"
	match '/logout', to: "sessions#destroy"
end