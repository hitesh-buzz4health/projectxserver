class UsersController < ApplicationController
 skip_before_action :verify_authenticity_token,
                 :if => Proc.new { |c| c.request.format == 'application/json' }

  skip_before_action :authenticate_user_from_token!, :only =>  [:create]

    def index
    
    end 

    def create 

	    respond_to do |format|
	      
			      format.json {
			        if params[:user] && params[:user][:email] && params[:user][:name]# input name and email
			          @user = User.where(:email => params[:user][:email].downcase).first unless User.where(:email => params[:user][:email].downcase).count == 0 
			          if @user.nil?
			            @user = User.new
			            lookup_hash   = UUIDTools::UUID.random_create.hexdigest  
			            # @user.phone_number          = params[:user][:phone_number]
			            # @user.safe_update(%w[name email ], params[:user])
                         @user.name = params[:user][:name]
                         @user.email = params[:user][:email]
                        
                        if params[:user][:specialization]
                            @user.specialization = params[:user][:specialization]
                        end 
			            if params[:user][:password]
			              @user.password              = params[:user][:password]
			              @user.password_confirmation = params[:user][:password]
			            else
			              @user.password              = lookup_hash[0,6]
			              @user.password_confirmation = lookup_hash[0,6]
			              
			            end

			            worker = Workers::Worker.new

			              worker.perform do

			             	 send_password_mail params[:user][:email] , lookup_hash[0,6]

			             end
			             #we have to  see wether we have to send password through mail or not.
                          
			          
                        
			            #assigning auth_token at the time of registration
			            @user.assign_authentication_token
			            if !params[:user][:license_no].nil?
                           @user.license_no = params[:user][:license_no]
			            end 
			            if !params[:user][:Practising_area_name].nil?
                           @user.practising_area_name = params[:user][:Practising_area_name]
			            end 
			            if !params[:user][:phone_no].nil?
                           @user.phone_no = params[:user][:phone_no]
			            end 

			            
                         @user.profile_pic =  create_profile_pic params[:user][:name]
                          	
			            success = @user && @user.save
			            if success && @user.errors.empty?
			              
			              # Jobs::Mailer.async.signup_welcome_email(@user.id).commit!
			              #Jobs::Mailer.async.new_invitation_alpha(@user.id,@user.email,@user.password).commit!
			             
			            

			              sign_in(:user, @user)

 
			              #if @user.country_code == "IN" && @user.user_persona == "doctor"
			                #show_promo_code = true
			              #end

			             

			              render :status => :ok,
			                     :json => { :success => true,
			                                :info => "Successfully Registered! Please check you email for password",
			                                :data => {  :user => @user.as_json

			                                            } }

			            else
			             render :status => :unprocessable_entity,
			                    :json => { :success => false,
			                                :info => @user.errors,
			                                :data => {} }
			            end
			          else
			            render  :status => 409,
			                    :json => { :success => false,
			                                :info => "You are already Registered!",
			                                :data => {} }
			          end

				        else
				          render :status => 412, 
				                  :json => { :success => false,
				                              :info => "User  details are  missing",
				                              :data => {} }
				        end
			      }
	    end

    end    

    def  get_surgeries_list

            patient_ids = Patient.where(:user_ids => current_user.id).only([:id])
            patient_ids = patient_ids.map { |b| b.id }.uniq
            surgery_list = Surgery.where(:patient_id.in => patient_ids ).page(params[:page]).desc(:date_of_surgery)

	    #   #rendering status
	      render :status => :ok,
                 :json => { :success => true,
                            :info => "list of surgeries",
                            :surgeries => surgery_list.as_json({:surgery_list => true})
                                       }

         

    end       



    def get_scores_list	
          
          patient_ids = Patient.where(:user_ids => current_user.id).only([:id])
          patient_ids = patient_ids.map { |b| b.id }.uniq
          secure_scores = SecureScore.where(:patient_id.in => patient_ids).page(params[:page]).desc(:score_date)
       #   #rendering status
	      render :status => :ok,
                 :json => { :success => true,
                            :info => "list of surgeries",
                             :scores_list => secure_scores.as_json({:answer => false})
                                       } 



    end     


private 

      def create_profile_pic name 

      	if name.split(" ").count == 2 
	         first_name = (name.split(" ")[0]).chars.first
	         last_name =(name.split(" ")[1]).chars.first
	         return"http://res.cloudinary.com/dbnr8a17c/image/upload/l_text:Lato_90_regular:#{first_name.upcase}%20#{last_name.upcase},co_rgb:ffffff/v1496148664/Doctor_Profile_BG_sscswd.png"
         else
            first_name = (name.split(" ")[0]).chars.first
            return "http://res.cloudinary.com/dbnr8a17c/image/upload/l_text:Lato_160_regular:#{first_name.upcase},co_rgb:ffffff/v1496148664/Doctor_Profile_BG_sscswd.png"
     
         end 


      end 

      def send_password_mail email , password
      	gmail = Gmail.connect("aishi.rastofi@buzz4health.com", "whitebutter")

        email_body = "Please use this Following password for future reference\n" + password.to_s
      	email = gmail.compose do

				  to  email
				  from    "buzz4health"
				  subject   "Please use this password to login"
				  
				  #for adding html template 
				  html_part do

					    content_type 'text/html; charset=UTF-8'
					    body  email_body
				   end

	       end

	       email.deliver!


      end 


end 