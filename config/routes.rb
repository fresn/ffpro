Rails.application.routes.draw do
  devise_for :customers,
             singular: :customer,
             path: "/", path_names:
                 {
                   sign_in:  "login",
                   sign_out:  "logout"
                 }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
