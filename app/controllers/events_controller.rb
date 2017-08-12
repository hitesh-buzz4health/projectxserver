class EventsController < ApplicationController

skip_before_action :verify_authenticity_token,
                 :if => Proc.new { |c| c.request.format == 'application/json' }

skip_before_action :authenticate_user_from_token!

def create 
 
 if !params.nil?
     event = Event.new
     event.name = params[:event][:name]
     event.save!
     
     respond_to do |format|

              format.json{
               render :json =>{
                              :success => true,
                              :info => "Event Created" ,
                              :event => event} }
     end 


else 


	respond_to do |format|

              format.json{
               render :json =>{
                              :success => true,
                              :info => "Insufficient data" } }
     end 

end 


end 


def update 
 event = Event.find(params[:id])
  if !event.nil?
    event.coordinates = params[:coordinates]
    event.save!
	respond_to do |format|
	          format.json{
	           render :json =>{
	                          :success => true,
	                          :info => "Event updated" 
	                           } }
	end 
  end 
end 

end 