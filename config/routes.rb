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

     resources  :custom_preferences

     resources  :events  
     
     post '/create_multiple_custom_preferences' => 'custom_preferences#create_multiple_custom_preferences'

     #defining routes for getting scores with 
     get '/get_score_with_type' => 'scores#get_with_type_of_score'
     get '/get_score_with_anatomy' => 'scores#get_with_type_of_anatomy'
     post '/creating_patient_secure_score' => 'patients#creating_secure_score'
     get  '/list_of_scores' => 'patients#get_secure_scores'
     get  '/current_user_preference' => 'preferences#get_current_user_preference'
     get  '/all_surgeries' => 'users#get_surgeries_list'
     get  '/all_scores' => 'users#get_scores_list'
     get   '/surgery_detail/:id' => 'surgeries#get_surgery_and_patient_info'
     get   '/score_list_by_patient/:id' => 'patients#get_list_of_score'
     get   '/search_by_patient' => 'patients#get_patient_by_query'
     get   '/list_of_surgeries_by_patient/:id' => 'patients#get_surgeries_list'
     get  '/sync_patient_data'  =>   'syncing#pushing_user_data'

     # analytics 
     get 'get_implant_brands_against_revision_surgery' => 'analytics#get_implant_brands_against_revision_surgery'
     get 'get_implant_brands_against_primary_surgery' => 'analytics#get_implant_brands_against_primary_surgery'
     get 'get_primary_vs_revision_surgery' => 'analytics#get_primary_vs_revision_surgery'
     get 'get_patients_by_age_and_surgeries' => 'analytics#get_patients_by_age_and_surgeries'
     get 'get_patients_by_implant_brand_vs_score' => 'analytics#get_patients_by_implant_brand_vs_score'
    
     #for streaming 
     get 'coordinates_streaming' => 'streaming_coordinates#sending_coordinates'

 

       
  # root 'surgeons#index'
end
