class PatientsController < ApplicationController



	def create 
	    if !params[:patient_name].nil?

	     @patient = Patient.new 
         @patient.name = params[:patient_name]

            if !params[:date_of_birth].nil?

          	@patient.date_of_birth = params[:date_of_birth]

            end
          
            if !params[:age].nil?

          	@patient.age = params[:age]

            end

            if !params[:sex].nil?

          	@patient.sex = params[:sex]

            end

            if !params[:height].nil?

          	@patient.height = params[:height]

            end
          

            if !params[:weight].nil?

          	@patient.weight = params[:weight]

           end

            if !params[:unique_id].nil?

          	@patient.unique_id = params[:unique_id]

           end

            if !params[:score].nil?

          	 @patient.height = params[:score]

            end
            @patient.users << current_user
            @patient.save!

            #attaching patient to the user 

            @current_user.patients << @patient
            @current_user.save!
               respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "new patient created",
		                      :data => { 
		                                    :patient => @patient } } }
		         end 

	    
	    else 

	    	      #responding in case of patient name is not provided 

                   respond_to do |format|

		            format.json{
		               render :json =>{ :success => false ,
		                      :info => "Info for creating the patient is not sufficient"
		                         } }
		         end 

	    end  


	end 
   

    def update 



    end 


end 

    


