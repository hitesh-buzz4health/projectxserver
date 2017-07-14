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
      	  pre_op_images = params[:diagnoses][:pre_op_images];
      	 #uploading preop images 
         pre_op_images.each do |preop_image|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "preop"
          medical_image.local_id = preop_image[:local_id]
          medical_image.upload(preop_image[:url],tags_array)
          medical_image.diagnosis = diagnosis
          medical_image.save!
         end 

      end 

       if !params[:diagnoses][:post_op_images].nil?
         post_op_images = params[:diagnoses][:post_op_images];
      	 #uploading pop images 
         post_op_images.each do |post_op_image|
         	medical_image = MedicalImage.new
         	medical_image.image_tags =  tags_array
         	medical_image.image_type = "postop"
          medical_image.local_id = post_op_image[:local_id]
          medical_image.upload(post_op_image[:url] ,tags_array)
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
          pre_op_images = params[:diagnoses][:pre_op_images];
         #uploading preop images 
         pre_op_images.each do |preop_image|
          medical_image = MedicalImage.new
          medical_image.image_tags =  tags_array
          medical_image.image_type = "preop"
          medical_image.local_id = preop_image[:local_id]
          medical_image.upload(preop_image[:url],tags_array)
          medical_image.diagnosis = diagnosis
          medical_image.save!
         end 

      end 
      if !params[:diagnoses][:post_op_images].nil?
         post_op_images = params[:diagnoses][:post_op_images];
         #uploading pop images 
         post_op_images.each do |post_op_image|
            medical_image = MedicalImage.new
            medical_image.image_tags =  tags_array
            medical_image.image_type = "postop"
            medical_image.local_id = post_op_image[:local_id]
            medical_image.upload(post_op_image[:url] ,tags_array)
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