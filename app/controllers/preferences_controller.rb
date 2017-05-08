class PreferencesController < ApplicationController



	def create
		if current_user.preference.nil?
		    if !params[:user].nil? && !params[:user][:type_of_surgery].nil?
			  @preference = Preference.new 
			  @preference.type_of_surgery = params[:user][:type_of_surgery]  # we have to check wether we have to insert conditions for each parameter separtely
			  @preference.surgical_approach = params[:user][:surgical_approach]
			  @preference.computer_nav = params[:user][:computer_nav]
			  @preference.tibia_type = params[:user][:tibia_type]
			  @preference.tibia_bearing = params[:user][:tibia_bearing]
			  @preference.patella_resurfaced = params[:user][:patella_resurfaced]
			  @preference.tibia_bearing = params[:user][:tibia_bearing]
			  @preference.tibia_stem = params[:user][:tibia_stem]
			  @preference.femur_stem = params[:user][:femur_stem]
			  @preference.user = current_user
			  @preference.save!
			  current_user.preference = @preference
			  current_user.save!
		       
		        #when   a new preference is created 
		         respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "preference for the user is created",
		                      :data => { :auth_token => current_user.authentication_token,
		                                 :id => current_user.id.to_s,
		                                 :name => current_user.name ,
		                                 :user_preference => current_user.preference } } }
		         end 


		     else     
			       # response when no of fields for this user are not suffecient
			       respond_to do |format|

			        format.json{
				       render :json =>{
				                      :success => false,
				                      :info => "please provide full info for this user " } }
			        end 

		     end 
		    
	        
		else
		            
		  respond_to do |format|

		            format.json{
		            	  render :json =>{:success => false,
		                                  :info => "preference already created for this user ",
					              :data => { :auth_token => current_user.authentication_token,
					                         :id => current_user.id.to_s,
					                         :name => current_user.name ,
					                         :user_preference => current_user.preference} } }
		            end 

	     end 

	end 


	def update 

	  @user_preference = Preference.find(params[:id])

	  if !params[:user][:type_of_surgery].nil?
	  	@user_preference.type_of_surgery = params[:user][:type_of_surgery] 
      end 

	  if !params[:user][:surgical_approach].nil?
	    @user_preference.surgical_approach = params[:user][:surgical_approach]

      end

	  if !params[:user][:computer_nav].nil?
	  @user_preference.computer_nav = params[:user][:computer_nav]

      end

	  if !params[:user][:tibia_type].nil?
	   @user_preference.tibia_type = params[:user][:tibia_type]

      end

	  if !params[:user][:tibia_bearing].nil?
	  @user_preference.tibia_bearing = params[:user][:tibia_bearing]

      end

	  if !params[:user][:patella_resurfaced].nil?
	   @user_preference.patella_resurfaced = params[:user][:patella_resurfaced]

      end

	  if !params[:user][:tibia_bearing].nil?
	  	@user_preference.tibia_bearing = params[:user][:tibia_bearing]

      end

	  if !params[:user][:tibia_stem].nil?
	  	@user_preference.tibia_stem = params[:user][:tibia_stem]

      end

	  if !params[:user][:femur_stem].nil?
	   @user_preference.femur_stem = params[:user][:femur_stem]
      end

	  #updating user preference
	  @user_preference.save!

      
	  respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "preference for the user is updated",
		                      :data => { :auth_token => current_user.authentication_token,
		                                 :id => current_user.id.to_s,
		                                 :name => current_user.name ,
		                                 :user_preference => current_user.preference } } }
	  end 

	end 





	def show 
        
    @preference = Preference.find(params[:id]) 
    #rendering part 
    respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "preference for the current user",
		                      :data => { :auth_token => current_user.authentication_token,
		                                 :id => current_user.id.to_s,
		                                 :name => current_user.name ,
		                                 :user_preference => current_user.preference } } }
	 end 



	end 



end 


   
