class ScoresController < ApplicationController


	def index 
      
        list_of_scores = Score.all         
            
        respond_to do |format|

                  format.json{
                     render :json =>{ :success => true ,
                            :info => "list of scores",
                            :data => { :list_of_scores => list_of_scores } } }
        end 
       
   
	end 


def show 
	score = Score.find(params[:id])

	 respond_to do |format|

                  format.json{
                     render :json =>{ :success => true ,
                            :info => "score for given id ",
                            :data => { :score => score.as_json } } }
        end 


end 



def with_type_of_score

   score_with_type_of_score = Score.where(:type_of_score => params[:type_of_score]).first

    respond_to do |format|

                  format.json{
                     render :json =>{ :success => true ,
                            :info => "score for given id ",
                            :data => { :score_with_type_of_score => score_with_type_of_score.as_json } } }
    end 





end 

   



end 

