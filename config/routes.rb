Rails.application.routes.draw do

  resources :repositories do
    resource :deployment, except: [:index, :show]
  end

end
