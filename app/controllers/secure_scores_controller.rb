class SecureScoresController < ApplicationController




def show 

  
  secure_score =  SecureScore.find(params[:id])

  #   #rendering status
   render :status => :ok,
                 :json => { :success => true,
                            :info => "secure score " ,
                            :data => {  :patient => secure_score.patient.as_json,
                            	        :secure_score => secure_score.as_json({:answer => true})
                                      } }





end 



end 