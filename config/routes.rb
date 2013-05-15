NewspaperApp::Application.routes.draw do
	resources :newspapers do
		member do
			resources :subscription_plans, only: [:new, :create]
		end
	end

	resources :users
	resource :session
end