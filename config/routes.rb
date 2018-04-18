Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/content'

  get 'static_pages/about'

  get 'static_pages/service'

  post 'carts/create', to: "carts#create"

  post 'carts/update', to: "carts#update"

  post 'carts/checkout', to: "carts#checkout"

  get 'product/index'

  get 'product/search'

  get 'product/Category'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/service', to: 'static_pages#service'

  get '/contact', to: 'static_pages#contact'

  devise_for :customers,
             singular: :customer,
             controllers: {
                 sessions: 'customer/sessions'
             }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
