class SyncingController < ApplicationController



def pushing_user_data



 respond_to do |format|

		            format.json{
		               render :json =>{ :success => true ,
		                      :info => "Syncing data ",
		                      :patients => current_user.patients.as_json({:simple_query => false}),
		                      } }

end    

end 










end