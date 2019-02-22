Rails.application.routes.draw do

	post 'webhook', to: 'webhook#handle'

	resources :repositories do
		resources :deployments, except: [:index, :show]
	end

	require 'sidekiq/web'
    mount Sidekiq::Web => '/sidekiq'
end