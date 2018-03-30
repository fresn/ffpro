Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/service', to: 'static_pages#service'

  get '/contact', to: 'static_pages#contact'

 # get '/register', to: 'customer/registrations#new'

  devise_for :customers,
             singular: :customer,
             controllers:{
                 sessions:'customer/sessions'
             }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
