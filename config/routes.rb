Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about', to: 'static_pages#about'

  get '/service', to: 'static_pages#service'

  get '/contact', to: 'static_pages#contact'

  devise_for :customers,
             singular: :customer,
             path: "/", path_names:
                 {
                     sign_in: "login",
                     sign_out: "logout",
                     sign_up: "register"
                 }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
