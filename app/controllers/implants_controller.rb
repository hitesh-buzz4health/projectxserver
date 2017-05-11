class ImplantsController < ApplicationController



  def create 


     if !params.nil? 
       @implant = KneeImplant.where(:brand_name => params[:implant][:brand_name] , 
        :type_of_implant => params[:implant][:type_of_implant]  , 
        :tibia_type => params[:implant][:tibia_type] , 
        :tibia_bearing => params[:implant][:tibia_bearing] , 
        :patella_resurfaced => params[:implant][:patella_resurfaced] ,
        :tibia_stem =>params[:implant][:tibia_stem]  ,
        :femur_stem => params[:implant][:femur_stem] ).first

     if @implant.nil? 
     	@implant = KneeImplant.new 
     	if !params[:implant][:brand_name].nil?
          @implant.brand_name = params[:implant][:brand_name]
     	end 
     	if !params[:implant][:type_of_implant].nil? 
          @implant.type_of_implant = params[:implant][:type_of_implant]
     	end  
     	if !params[:implant][:tibia_type].nil?
          @implant.tibia_type = params[:implant][:tibia_type]
     	end 
     	if !params[:implant][:tibia_bearing].nil?
          @implant.tibia_bearing = params[:implant][:tibia_bearing]
     	end 
     	if !params[:implant][:patella_resurfaced].nil?
          @implant.patella_resurfaced = params[:implant][:patella_resurfaced]
     	end 
      if !params[:implant][:tibia_stem].nil?
          @implant.tibia_stem = params[:implant][:tibia_stem]
     	end 
      if !params[:femur_stem].nil?
          @implant.femur_stem = params[:femur_stem]
     	end 

          # @implant.surgeries << surgery 
          @implant.save!

          # surgery.implants << @implant
          # surgery.save!


     	#responding saving implant info 
          respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "new implant created",
                          :data => { :implant => @implant } } }
          end 
     else 

        # when patient id is nil 

        respond_to do |format|

                    format.json{
                       render :json =>{
                                      :success => false,
                                      :info => "Insufficient info to create a new implant." } }
        end 


     end 

   
   end 


  end 


  def update 

    @implant = KneeImplant.find(params[:id])
    if !params.nil?
      if !params[:implant][:brand_name].nil?
          @implant.brand_name = params[:implant][:brand_name]
      end 
      if !params[:implant][:type_of_implant].nil?
          @implant.type_of_implant = params[:implant][:type_of_implant]
      end  
      if !params[:tibia_type].nil?
          @implant.tibia_type = params[:tibia_type]
      end 
      if !params[:tibia_bearing].nil?
          @implant.tibia_bearing = params[:tibia_bearing]
      end 
      if !params[:patella_resurfaced].nil?
          @implant.patella_resurfaced = params[:patella_resurfaced]
      end 
      if !params[:implant][:tibia_stem].nil?
          @implant.tibia_stem = params[:implant][:tibia_stem]
      end 
      if !params[:implant][:femur_stem].nil?
          @implant.femur_stem = params[:implant][:femur_stem]
      end 
        #saving the implant 
         @implant.save!
        respond_to do |format|

                    format.json{
                       render :json =>{ :success => true ,
                              :info => "Implant info has been updated",
                              :data => { :implant => @implant } } }
        end 

    else 
       respond_to do |format|
                    format.json{
                       render :json =>{
                                      :success => false,
                                      :info => "nothing to update" } }
       end 

    end 

  end 




  def show 

       implant = KneeImplant.find(params[:id])
        respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :data => {  :implant => implant } } }
        end 

  end 






end



