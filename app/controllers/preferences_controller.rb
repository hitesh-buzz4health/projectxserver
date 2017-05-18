class PreferencesController < ApplicationController

   


   def index

   	  if params[:surgery_type].eql?"Knee"
   	  	@surgical_approach = SurgicalApproach.where(:surgery_type => params[:surgery_type])
   	  	@implants          = KneeImplant.all

        respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "returning list of surgical Approach",
		                      :data => { :surgical_approach => @surgical_approach.as_json,
		                                 :implants  => @implants.as_json 
		                                 } } }
		 end    





   	  end 

   	


   end 

	def create
		if current_user.preference.nil?
		    if !params[:user].nil? && !params[:user][:surgery_type].nil?
			  @preference = Preference.new 
			  @preference.surgery_type = params[:user][:surgery_type]  # we have to check wether we have to insert conditions for each parameter separtel
			  @preference.brand_name = params[:user][:brand_name]
			  @preference.type_of_implant = params[:user][:type_of_implant]
			  @preference.surgical_approach = params[:user][:surgical_approach]
			  @preference.computer_nav = params[:user][:computer_nav]
			  @preference.weight_unit = params[:user][:weight_unit]
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
		                      :data => { :user_preference =>  @preference } } }
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
		                                  :info => "preference already created for this user, if you wish to make changes use the update method",
					              :data => { :user_preference => current_user.preference.as_json} } }
		            end 

	     end 

	end 


	def update 

	  @user_preference = Preference.find(params[:id])

	  if !params[:user][:surgery_type].nil?
	  	@user_preference.surgery_type = params[:user][:surgery_type] 
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

	  if !params[:user][:brand_name].nil?
	  @user_preference.brand_name = params[:user][:brand_name]
      end

      if !params[:user][:weight_unit].nil?
      @user_preference.weight_unit = params[:user][:weight_unit]
      end
       
      if !params[:user][:type_of_implant].nil?
	  @user_preference.type_of_implant = params[:user][:type_of_implant]
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
		                      :data => {  :user_preference =>  @user_preference.as_json } } }
	  end 

	end 





	def show 
        
    @preference = Preference.find(params[:id]) 
    #rendering part 
    respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "preference for the current user",
		                      :data => { 
		                                 :preference =>  @preference.as_json} } }
	 end 



	end 




   def get_current_user_preference

       @preference = current_user.preference

      respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "preference for the current user",
		                      :data => { 
		                                 :user_preference => @preference.as_json } } }
	 end 






   end 



end 


   

