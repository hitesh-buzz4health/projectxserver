class StaticDataController  < ApplicationController



	  def index

		   	  if params[:surgery_type].eql?"Knee"
			   	  	@surgical_approach = SurgicalApproach.where(:surgery_type => params[:surgery_type])
			   	  	@implants          = KneeImplant.all
			        @uid_list     = UidType.all

				        respond_to do |format|

						            format.json{
						               render :json =>{ :success => true ,
						                      :info => "returning list of surgical Approach",
						                      :data => { :surgical_approach => @surgical_approach.as_json,
						                                 :implants  => @implants.as_json ,
						                                 :uid_type_list => @uid_list.as_json
						                                 } } }
						 end    

		   	  end 

	   	


	     end 


end 