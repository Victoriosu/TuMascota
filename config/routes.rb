Rails.application.routes.draw do
  
  devise_for :owners
  resources :owners
  devise_scope :owners do
  	get 'owners/sign_in', to: 'devise/sessions#new'
  	get 'owners/sign_out', to: 'devise/sessions#destroy'
  end
  resources :pets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "dashboards#index"
end
