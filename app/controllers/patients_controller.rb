class PatientsController < ApplicationController







  def index 


  end 





	def create 

	    if !params[:patient][:patient_name].nil? && !params[:patient][:unique_id].nil?

	       @patient = Patient.new 
         @patient.name = params[:patient][:patient_name]
         @patient.unique_id = params[:patient][:unique_id]
            if !params[:patient][:date_of_birth].nil?
          	@patient.date_of_birth = params[:patient][:date_of_birth]
            end     
            if !params[:patient][:age].nil?
          	@patient.age = params[:patient][:age]
            end
            if !params[:patient][:sex].nil?
          	@patient.sex = params[:patient][:sex]
            end
            if !params[:patient][:height].nil?
          	@patient.height = params[:patient][:height]
            end
            if !params[:patient][:weight].nil?
          	@patient.weight = params[:patient][:weight] 
            end
            if !params[:patient][:score].nil?
          	 @patient.height = params[:patient][:score]
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
           
       @patient = Patient.find(params[:id])
       if !@patient.nil?
       	   if !params[:patient][:patient_name].nil?
               @patient.name = params[:patient][:patient_name]
       	   end 
           if !params[:patient][:date_of_birth].nil?
          	@patient.date_of_birth = params[:patient][:date_of_birth]
           end
           if !params[:patient][:age].nil?
          	@patient.age = params[:patient][:age]
           end
           if !params[:patient][:sex].nil?
          	@patient.sex = params[:patient][:sex]
           end
           if !params[:patient][:height].nil?
          	@patient.height = params[:patient][:height]
           end
           if !params[:patient][:weight].nil?
          	@patient.weight = params[:patient][:weight]
           end
           if !params[:patient][:score].nil?
          	 @patient.height = params[:patient][:score]
          end

            @patient.save!


                #sending response in case of update successfull
                respond_to do |format|

                   format.json{
                   	  render :json =>{ :success => true ,
    			                      :info => "the patient details has been updated ",
    			                       :data => { :patient => @patient   }}}

                end



       else 
             # in case there is no patient with the given id 
                  respond_to do |format|

  			            format.json{
  			               render :json =>{ :success => false ,
  			                      :info => "the patient details is not available."
  			                         } }
  		           end 


      end 

    end 


    def show 

     @patient = Patient.find(params[:id])


     respond_to do |format|

               format.json{
               	  render :json =>{ :success => true ,
			                       :info => "the patient details for particular patient",
			                       :data => { :patient => @patient   }}}

      end 

    end 



  def creating_patient_secure_score

    score = Score.find(params[:score_id])
    patient = Patient.find(params[:patient_id])
    
    if !score.nil? && !patient.nil?
    
      secure_score  = SecureScore.new 
      secure_score.patient_score = params[:secure_score][:patient_score]
      secure_score.score_date = params[:secure_score][:score_date]
      saving_answers_for_score params[:secure_score][:answers] , secure_score
      secure_score.patient = patient
      secure_score.score = score 
      secure_score.save!
      
        respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "creation of secure score",
                          :data => { :secure_score => secure_score } } }
        end 


    else 

          respond_to do |format|

                   format.json{
                      render :json =>{ :success => false ,
                                 :info => "the score  or patient info is not provided",
                                         }}

          end
    end 


  end 


def  list_of_secure_scores

      patient = Patient.find(params[:patient_id])

      if !patient.nil?
           
           secure_scores_list = patient.secure_scores

           respond_to do |format|

                   format.json{
                      render :json =>{ :success => true ,
                                :info => "list of scores  for a given patient",
                                 :data => { :secure_scores_list => secure_scores_list }}}

            end
  
      else 



         respond_to do |format|

                   format.json{
                      render :json =>{ :success => false ,
                                 :info => "the score  or patient info is not provided"
                                         }}

          end



      end  

   

end 





def saving_answers_for_score  answers , secure_score

   answers.each do | answer_options |
     answer = Answer.new 
     question = Question.find(answer_options[:question_id])
     option = Option.find(answer_options[:option_id])
     if !question.nil? && !option.nil?
          
          answer.question = question
          answer.option = option
          answer.secure_score = secure_score
          answer.save!

     end 

   end 


end  

end 

    


