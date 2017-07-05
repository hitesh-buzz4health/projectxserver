class SecureScoresController < ApplicationController




def show 

  
  secure_score =  SecureScore.find(params[:id])

  #   #rendering status
   render :status => :ok,
                 :json => { :success => true,
                            :info => "secure score " ,
                            :patient => secure_score.patient.as_json,
                             :secure_score => secure_score.as_json({:answer => true})
                                       }





end 






def update 


  @secure_score =  SecureScore.find(params[:id])

  if !@secure_score.nil?
      @secure_score.answers.delete_all
      if !params[:secure_score][:answers].nil?
       saving_answers_for_score params[:secure_score][:answers] , @secure_score
      end 
      @secure_score.patient_score = params[:secure_score][:patient_score]
      @secure_score.save!

        respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "updation of  secure score",
                          :data => { :secure_score => @secure_score ,
                                     :patient_id => @secure_score.patient.id.to_s} } }
        end 



 else


    respond_to do |format|

                   format.json{
                      render :json =>{ :success => false ,
                                 :info => "No Secured Score present with this id " ,
                                         }}

          end


 end  



end 


private 

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