class StaticDataController  < ApplicationController

skip_before_action :authenticate_user_from_token!


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


			def get_vr_videos
			    videos = []
			    video = {}
			    video["name"] = "Part_1_GC0RDU"
			    video["Link"] = "http://res.cloudinary.com/buzz4health/video/upload/v1481747498/Part_1_gc0rdu.mp4"
			    videos.push(video)
			    video = {}
			    video["name"] = "NHI Merged"
			    video["Link"] = "http://res.cloudinary.com/b4h/video/upload/v1503050557/nhi_merged.mp4"
			    videos.push(video)
			     video = {}
			    video["name"] = "Patient History"
			    video["Link"] = "http://res.cloudinary.com/b4h/video/upload/v1502177114/patient_history_e31p2u.mp4"
			    videos.push(video)


			    respond_to do |format|
			      format.json { render :json =>{:videos => videos }}
			    end
			  end 


end 