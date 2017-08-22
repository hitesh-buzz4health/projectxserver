class ScoresController < ApplicationController

skip_before_action :authenticate_user_from_token!

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



def get_with_type_of_score

   score_with_type_of_score = Score.where(:type_of_score => params[:type_of_score]).first

    respond_to do |format|

                  format.json{
                     render :json =>{ :success => true ,
                            :info => "score  for given type of score",
                            :data => { :score_with_type_of_score => score_with_type_of_score.as_json } } }
    end 





end 


def get_with_type_of_anatomy


   score_with_type_of_anatomy = Score.where(:anatomy => params[:anatomy])
   
    respond_to do |format|

                  format.json{
                     render :json =>{ :success => true ,
                            :info => "score for given anatomy",
                            :data => { :score_with_type_of_anatomy => score_with_type_of_anatomy.as_json } } }
    end 

 

end 

   



end 

