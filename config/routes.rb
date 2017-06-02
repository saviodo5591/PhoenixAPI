Rails.application.routes.draw do
  devise_for :gamers
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'Gamer', at: 'auth'
      resources :posts
      resources :follows
      resources :comments
    end
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
