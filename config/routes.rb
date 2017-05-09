Rails.application.routes.draw do




 
   namespace :api do


  namespace :v1 do
    devise_for :users, controllers: { sessions: 'api/v1/users/sessions' }  


 end 
end 

     post '/register' => 'users#create', :as => :register

     resources :users

     devise_for :users

     resources :preferences
   
     resources :patients 

     resources  :surgeries

     resources  :implants
       
  # root 'surgeons#index'
end
