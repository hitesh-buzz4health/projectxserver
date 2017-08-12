class StreamingCoordinatesController < ApplicationController
  include ActionController::Live

skip_before_action :verify_authenticity_token,
                 :if => Proc.new { |c| c.request.format == 'application/json' }

skip_before_action :authenticate_user_from_token!


def  sending_coordinates


   if !Event.find(params[:id]).nil?
		   	response.headers['Content-Type'] = 'text/event-stream'
		    server_side_events = Streaming::SSE.new(response.stream)
		    begin
		      loop do
		        server_side_events.write(Event.find(params[:id]))
		        sleep 0.5
		      end
		    rescue Exception => e
		      logger.info 'Client disconnects causes IOError on write ' + e.to_s
		    ensure
		      server_side_events.close
		    end
  else 
            respond_to do |format|

              format.json{
               render :json =>{
                              :success => false,
                              :info => "Event does not exist please check the event id." } }
              end 

  end 

end 	




end 


