Rails.application.routes.draw do




 
   namespace :api do


  namespace :v1 do
    devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }  


 end 
end 

     post '/register' => 'users#create', :as => :register

     resources :user

     devise_for :users



  # root 'surgeons#index'
end
