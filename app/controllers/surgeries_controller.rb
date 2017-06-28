class SurgeriesController < ApplicationController



 def create 


       patient = Patient.find(params[:patient_id])
       surgical_approach  =  SurgicalApproach.find(params[:surgical_approach_id])
       diagnosis    = Diagnosis.find(params[:diagnosis_id])
   	if  !patient.nil? && !surgical_approach.nil? && !diagnosis.nil?
          if !params[:surgery].nil? && !params[:implant].nil?             
              creating_surgery params[:surgery]  , patient  , surgical_approach , diagnosis
               params[:implant].each do |implant|
                 attaching_impalnt_to_surgery implant
               end 
                    
               respond_to do |format|
                  format.json{
                     render :json =>{ :success => true ,
                            :info => "new surgery  created",
                            :data => { :surgery => @surgery.as_json ,
                                       :diagnosis_id => diagnosis.id.to_s} } }
               end 
          else 
              #rendering message in case of nil surgery
              respond_to do |format|
                      format.json{
                         render :json =>{
                                        :success => false,
                                        :info => " not enough info  related to this surgery" } }
              end 
          end    
    else 
          # when patient id is nil 
          respond_to do |format|
                      format.json{
                         render :json =>{
                                        :success => false,
                                        :info => "Either patient or Surgical Approach is missing." } }
          end 




    end  





 end 




 def show 
  

   surgery = Surgery.find(params[:id])

    respond_to do |format|
		            format.json{
		               render :json =>{ :success => true ,
		                      :data => {  :surgery => surgery.as_json } } }
	  end 
 end 



 def index 




 end 





 def update 


    @surgery = Surgery.find(params[:id])
    surgical_approach  =  SurgicalApproach.find(params[:surgical_approach_id])

    if !@surgery.nil? && !params.nil?
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
              if !surgical_approach.nil? 
                  @surgery.surgical_approach = surgical_approach 
              end 
 
             #saving the updated surgery info

            if !params[:implant].nil?
                 params[:implant].each do |item|
                   implant  = KneeImplant.find(item[:implant_id])
                   #deleting the existing implant 
                    if !implant.nil?
                     @surgery.knee_implants.delete(implant)  
                     attaching_impalnt_to_surgery item
                    end 
                end 
            end 
 
              @surgery.save!
            # responding updated surgery
             respond_to do |format|

                      format.json{
                         render :json =>{ :success => true ,
                                :info => "Surgery info has been updated.",
                                :data => {    
                                               :surgery => @surgery.as_json ,
                                              :diagnosis_id => diagnosis.id.to_s} } }
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




 def creating_surgery params , patient , surgical_approach ,diagnosis

            @surgery = Surgery.new

             if !params[:date_of_surgery].nil?
                @surgery.date_of_surgery = params[:date_of_surgery]
             end 
             if !params[:surgery_for].nil?
                @surgery.surgery_for = params[:surgery_for]
             end 
             if !params[:nature_of_surgery].nil?
                @surgery.nature_of_surgery = params[:nature_of_surgery]
             end 
            
             if !params[:computer_nav].nil?
                @surgery.computer_nav = params[:computer_nav]
             end 
             if !params[:type_of_surgery].nil?
                @surgery.type_of_surgery = params[:type_of_surgery]
             end 
           
           
             @surgery.user = current_user 
             @surgery.patient = patient
             @surgery.surgical_approach = surgical_approach
             @surgery.diagnosis = diagnosis
             @surgery.save!
            
             patient.surgeries << @surgery
             patient.save!

            

 end 



 def attaching_impalnt_to_surgery params
       

   @implant = KneeImplant.where(:brand_name => params[:brand_name] , 
        :type_of_implant => params[:type_of_implant]  , 
        :tibia_type => params[:tibia_type] , 
        :tibia_bearing => params[:tibia_bearing] , 
        :patella_resurfaced => params[:patella_resurfaced] ,
        :tibia_stem =>params[:tibia_stem]  ,
        :femur_stem => params[:femur_stem] ).first

   if @implant.nil?      
      @implant = KneeImplant.new 
      if !params[:brand_name].nil?
          @implant.brand_name = params[:brand_name]
      end 
      if !params[:type_of_implant].nil? 
           @implant.type_of_implant = params[:type_of_implant]
      end  
      if !params[:tibia_type].nil?
          @implant.tibia_type = params[:tibia_type]
      end 
      if !params[:tibia_bearing].nil?
          @implant.tibia_bearing = params[:tibia_bearing]
      end 
      if !params[:patella_resurfaced].nil?
          @implant.patella_resurfaced = params[:patella_resurfaced]
      end 
      if !params[:tibia_stem].nil?
          @implant.tibia_stem = params[:tibia_stem]
      end 
      if !params[:femur_stem].nil?
          @implant.femur_stem = params[:femur_stem]
      end 

   end     
      
          @implant.surgeries << @surgery 
          @implant.save!

          # @surgery.knee_implants << @knee_implants
          # @surgery.save!

 end 





   def get_surgery_and_patient_info 


      surgery = Surgery.find(params[:id])

      if !surgery.nil?

         respond_to do |format|

                              format.json{
                                 render :json =>{ :success => true ,
                                        :info => "Surgery info .",
                                        :patient => surgery.patient.as_json,
                                        :surgery => surgery.as_json  } }
           end


      else 

                  respond_to do |format|

                              format.json{
                                 render :json =>{ :success => true ,
                                        :info => "NO related surgery found."
                                            } }
                    end


      end

   end 






end 












    


