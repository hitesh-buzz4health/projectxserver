class ImplantsController < ApplicationController



  def create 


     if !params[:surgery_id].nil? 

      surgery = Surgery.find(params[:surgery_id])
     	@implant = Implant.new 

     	if !params[:brand_name].nil?
         
          @implant.brand_name = params[:brand_name]
        
     	end 


     	if !params[:type_of_implant].nil?
           
          @implant.type_of_implant = params[:type_of_implant]


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

    

        if !params[:tibia_stem].nil?

          @implant.tibia_stem = params[:tibia_stem]


     	end 

        if !params[:femur_stem].nil?

          @implant.femur_stem = params[:femur_stem]


     	end 
              
          @implant.surgery = surgery 
          @implant.save!

          surgery.implants << @implant
          surgery.save!


     	#responding saving implant info 
          respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :info => "new implant created",
                          :data => { 
                                        :implant => @implant } } }
          end 






     else 

                     # when patient id is nil 

        respond_to do |format|

                    format.json{
                       render :json =>{
                                      :success => false,
                                      :info => "Insufficient info require surgery info." } }
        end 


     end 

   



  end 


  def update 

    @implant = Implant.find(params[:id])
 
    if !params.nil?


       if !params[:brand_name].nil?
         
          @implant.brand_name = params[:brand_name]
        
      end 


      if !params[:type_of_implant].nil?
          
          @implant.type_of_implant = params[:type_of_implant]


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

    

       if !params[:tibia_stem].nil?

          @implant.tibia_stem = params[:tibia_stem]


      end 

      if !params[:femur_stem].nil?

          @implant.femur_stem = params[:femur_stem]


      end 

        #saving the implant 
         @implant.save!


        respond_to do |format|

                    format.json{
                       render :json =>{ :success => true ,
                              :info => "Implant info has been updated",
                              :data => { 
                                            :implant => @implant } } }
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

       implant = Implant.find(params[:id])

        respond_to do |format|

                format.json{
                   render :json =>{ :success => true ,
                          :data => {  :implant => implant } } }
        end 



  end 






end



