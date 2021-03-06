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
     
     resources  :diagnoses

     resources  :static_data
    #defining routes for getting scores with 
     get '/get_score_with_type' => 'scores#get_with_type_of_score'
     get '/get_score_with_anatomy' => 'scores#get_with_type_of_anatomy'
     post '/creating_patient_secure_score' => 'patients#creating_patient_secure_score'
     get  '/list_of_scores' => 'patients#get_secure_scores'
     get  '/current_user_preference' => 'preferences#get_current_user_preference'
     get  '/all_surgeries' => 'users#get_surgeries_list'
     get  '/all_scores' => 'users#get_scores_list'
     get   '/surgery_detail/:id' => 'surgeries#get_surgery_and_patient_info'

       
  # root 'surgeons#index'
end
