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

     resources  :scores

     resources  :secure_scores
    
    #defining routes for getting scores with 
     get '/get_score_with_type' => 'scores#with_type_of_score'
     post '/creating_patient_secure_score' => 'patients#creating_patient_secure_score'
     get  '/list_of_scores' => 'patients#list_of_secure_scores'
       
  # root 'surgeons#index'
end
