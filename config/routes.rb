Rails.application.routes.draw do




 
   devise_for :users
   namespace :api do


  namespace :v1 do
    devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }  


 end 
end 

     post '/register' => 'users#create', :as => :register

     resources :user


  # root 'surgeons#index'
end
