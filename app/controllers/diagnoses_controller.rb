class DiagnosesController < ApplicationController



 def create 
      
       patient = Patient.find(params[:patient_id])
   if !patient.nil?
      diagnosis = Diagnosis.new 
      if !params[:diagnoses][:diagnosis_outcome].nil?
        diagnosis.diagnosis_outcome = params[:diagnoses][:diagnosis_outcome]
      end 
      tags_array = []
      if !params[:diagnoses][:image_tags].nil?
      	tags_array = params[:diagnoses][:image_tags]

      if tags_array.kind_of?(String)
        tags_array = tags_array.split(",").map{|e| e.strip}
      end
      tags_array = tags_array.uniq
      diagnosis.image_tags = tags_array
      end 
      if !params[:diagnoses][:pre_op_images].nil?
      	 count_pre_op_images = params[:diagnoses][:pre_op_images].length;
      	 #uploading preop images 
         count_pre_op_images.times do | count_preop|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "preop"
          medical_image.upload(params[:diagnoses][:pre_op_images][count_preop] ,tags_array)
          medical_image.diagnosis = diagnosis
          medical_image.save!
         end 

      end 

       if !params[:diagnoses][:post_op_images].nil?
      	 count_post_op_images = params[:diagnoses][:post_op_images].length;
      	 #uploading pop images 
         count_post_op_images.times do | count_post|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "postop"
          medical_image.upload(params[:diagnoses][:post_op_images][count_post] ,tags_array)
          medical_image.diagnosis = diagnosis
          medical_image.save!
         end 

      end 
       diagnosis.patient = patient
       diagnosis.save!
        respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "new diagnosis created",
                          :data => { :diagnosis => diagnosis.as_json(),
                                     :patient_saved_id => params[:patient_id] } } }
          end 
                
           
   else 
   	  # rendering when params is nil.

        respond_to do |format|

                format.json{
                   render :json =>{ :success => false ,
                          :info => "patient or params are nil."
                                } }
          end 

   end  


 end 


 def update 
   
   diagnosis = Diagnosis.find(params[:id])
   if !diagnosis.nil?
   		 if !params[:diagnoses][:diagnosis_outcome].nil?
          diagnosis.diagnosis_outcome = params[:diagnoses][:diagnosis_outcome]
        end 
        tags_array = []
        if !params[:diagnoses][:image_tags].nil?
          tags_array = params[:diagnoses][:image_tags]
        if tags_array.kind_of?(String)
          tags_array = tags_array.split(",").map{|e| e.strip}
        end
        tags_array = tags_array.uniq
        diagnosis.image_tags = tags_array

       end 
  
        if !params[:diagnoses][:pre_op_images].nil?
      	 count_pre_op_images = params[:diagnoses][:pre_op_images].length;
      	 #uploading prop images 
         count_pre_op_images.times do | count_preop|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "preop"
            medical_image.upload(params[:diagnoses][:pre_op_images][count_preop] ,diagnosis.image_tags)
            medical_image.diagnosis = diagnosis
            medical_image.save!
         end 

      end 

       if !params[:diagnoses][:post_op_images].nil?
      	 count_post_op_images = params[:diagnoses][:post_op_images].length;
      	 #uploading prop images 
         count_post_op_images.times do | count_post|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "postop"
            medical_image.upload(params[:diagnoses][:post_op_images][count_post] ,diagnosis.image_tags)
            medical_image.diagnosis = diagnosis
            medical_image.save!
         end 

      end 
      

        diagnosis.save!

          respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "diagnosis updated.",
                          :data => { :diagnosis => diagnosis.as_json() ,
                                     :patient_saved_id => params[:patient_id]} } }
          end     




    
   else 
     # please provide the valid  diagnosis id    
       respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "please provide a valid diagnosis process.",
                            } }
          end     
   
   
   end  
 end 


 def show 

 	diagnosis = Diagnosis.find(params[:id])

 	respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :data => {  :diagnosis => diagnosis.as_json } } }
     end 


 end 

  



end 