Rails.application.routes.draw do




 
namespace :api do


  namespace :v1 do
    devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }  

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
         # devise_scope :user do
         #      post 'sessions' => 'users/sessions#create', :as => 'login'
         #      delete 'sessions' => 'sessions#destroy', :as => 'logout'
         #      post 'password' => 'password#create'
         # end 
 end 
end 

     post '/register' => 'users#create', :as => :register

     resources :users


  # root 'surgeons#index'
end
