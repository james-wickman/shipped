Rails.application.routes.draw do
  

  get 'admins/index'

  get 'admins/show'

  devise_for :admins
  get 'ship_jobs/index'

  post 'ship_jobs/create'

  delete 'ship_jobs/destroy'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
	resources :jobs
	resources :ships
	get 'users/index'
	get 'users/show'
	root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
