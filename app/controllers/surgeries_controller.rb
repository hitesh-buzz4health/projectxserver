class SurgeriesController < ApplicationController



 def create 

 	if !params[:patient_id].nil?
           
            patient = Patient.find(params[:patient_id])
            @surgery = Surgery.new

            @surgery.patient_name = params[:patient_name]


            if !params[:date_of_surgery].nil?

                @surgery.date_of_surgery = params[:date_of_surgery]

            end 

            
             if !params[:surgery_for].nil?

                @surgery.surgery_for = params[:surgery_for]

            end 

             if !params[:nature_of_surgery].nil?

                @surgery.nature_of_surgery = params[:nature_of_surgery]

            end 

             if !params[:surgical_approach].nil?

                @surgery.surgical_approach = params[:surgical_approach]

            end 


             if !params[:computer_nav].nil?

                @surgery.computer_nav = params[:computer_nav]

            end 


             @surgery.patient = patient
             @surgery.save!

             patient.surgeries << @surgery
             patient.save!


              respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "new surgery  created",
		                      :data => { 
		                                    :surgery => @surgery } } }
		         end 


           
 
   

    else 

        # when patient id is nil 

        respond_to do |format|

                    format.json{
                       render :json =>{
                                      :success => false,
                                      :info => "please provide  the patient related to this surgery" } }
        end 




    end  





 end 




 def show 
  

   surgery = Surgery.find(params[:id])

    respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :data => {  :surgery => surgery } } }
	  end 


 end 



 def index 




 end 





 def update 


  @surgery = Surgery.find(params[:id])

  if !params.nil?
           

            @surgery.patient_name = params[:patient_name]


            if !params[:date_of_surgery].nil?

                @surgery.date_of_surgery = params[:date_of_surgery]

            end 

            
             if !params[:surgery_for].nil?

                @surgery.surgery_for = params[:surgery_for]

            end 

             if !params[:nature_of_surgery].nil?

                @surgery.nature_of_surgery = params[:nature_of_surgery]

            end 

             if !params[:surgical_approach].nil?

                @surgery.surgical_approach = params[:surgical_approach]

            end 


             if !params[:computer_nav].nil?

                @surgery.computer_nav = params[:computer_nav]

            end 

            #saving the updated surgery info 

            @surgery.save!
             

          # responding updated surgery


           respond_to do |format|

                    format.json{
                       render :json =>{ :success => true ,
                              :info => "Surgery info has been updated.",
                              :data => { 
                                            :surgery => @surgery } } }
                 end 





    else 
           # when patient id is nil 
           
           respond_to do |format|

                    format.json{
                       render :json =>{
                                      :success => false,
                                      :info => "please provide  the patient related to this surgery" } }
            end 



    end  



 end 





end 












    


