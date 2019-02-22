Rails.application.routes.draw do

	post 'webhook', to: 'webhook#handle'

	resources :repositories do
		resource :deployment, except: [:index, :show]
	end

end
