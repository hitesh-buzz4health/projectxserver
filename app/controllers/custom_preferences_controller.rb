class CustomPreferencesController < ApplicationController





	def create


		if !current_user.preference.nil?
           
	       @custom_preference  = CustomPreference.new 
           @custom_preference.name = params[:custom_preference][:name]
           @custom_preference.section = params[:custom_preference][:section]
           @custom_preference.value = params[:custom_preference][:value]
           @custom_preference.type = params[:custom_preference][:type]
           @custom_preference.opted_value = params[:custom_preference][:opted_value]
           @custom_preference.user = current_user
           @custom_preference.preference  = current_user.preference 
           @custom_preference.save!


	           #sending response 
				respond_to do |format|

						            format.json{
						               render :json =>{ :success => true ,
						                      :info => "custom preference updated",
						                      :custom_preference => @custom_preference.as_json() } }
			    end    
			     

        else 

	             respond_to do |format|

						            format.json{
						               render :json =>{ :success => true ,
						                      :info => "please first create a preference "
						                       } }
			      end   

        end  


	end 


	def create_multiple_custom_preferences 

		        if !current_user.preference.nil?
		           
				          params[:custom_preferences].each do |custom_preference|

					           @custom_preference  = CustomPreference.new 
					           @custom_preference.name = params[:custom_preference][:name]
					           @custom_preference.section = params[:custom_preference][:section]
					           @custom_preference.value = params[:custom_preference][:value]
					           @custom_preference.type = params[:custom_preference][:type]
					           @custom_preference.opted_value = params[:custom_preference][:opted_value]
					           @custom_preference.user = current_user
					           @custom_preference.preference  = current_user.preference 
					           @custom_preference.save!

		                  end 

			           #sending response 
						respond_to do |format|

								            format.json{
								               render :json =>{ :success => true ,
								                      :info => "mutliple custom preference updated",
								                      :custom_preferences => current_user.custom_preferences} }
					    end    
					     

		        else 

			             respond_to do |format|

								            format.json{
								               render :json =>{ :success => true ,
								               		  :info => "please first create a preference "

								                       }}
					      end   

		        end  


	end   	


   def update 

     @custom_preference = CustomPreference.find(params[:id])
     if !@custom_preference.nil?
                      
                     #updating data
                    if  !params[:custom_preference][:name].nil?
                       @custom_preference.name = params[:custom_preference][:name]
                    end 
                    if  !params[:custom_preference][:section].nil?
			           @custom_preference.section = params[:custom_preference][:section]
                    end 
                    if  !params[:custom_preference][:value].nil?
			           @custom_preference.value = params[:custom_preference][:value]
                    end 
                    if  !params[:custom_preference][:type].nil?
			           @custom_preference.type = params[:custom_preference][:type]
                    end 
                    if  !params[:custom_preference][:opted_value].nil?
			           @custom_preference.opted_value = params[:custom_preference][:opted_value]
                    end 
                #saving custom preference 
              @custom_preference.save!
           #sending response 
			respond_to do |format|

					            format.json{
					               render :json =>{ :success => true ,
					                      :info => "custom preference updated",
					                      :custom_preference => @custom_preference } }
		    end   

     else 

           #sending response 
			respond_to do |format|

					            format.json{
					               render :json =>{ :success => true ,
					                      :info => "custom preference is not found"
					                         } }
		    end   



     end  


   end 


   def destroy

     @custom_preference = CustomPreference.find(params[:id])
     if !@custom_preference.nil?

       @custom_preference.delete

       #sending response 
			respond_to do |format|

					            format.json{
					               render :json =>{ :success => true ,
					                      :info => "custom preference deleted"
					                         } }
		    end 

     else 


     	#sending response 
			respond_to do |format|

					            format.json{
					               render :json =>{ :success => true ,
					                      :info => "custom preference is not found"
					                         } }
		    end 


     end  



   end 
 




end 
