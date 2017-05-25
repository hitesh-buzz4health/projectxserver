class UsersController < ApplicationController
 skip_before_action :verify_authenticity_token,
                 :if => Proc.new { |c| c.request.format == 'application/json' }

  skip_before_action :authenticate_user_from_token!

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
			             #we have to  see wether we have to send password through mail or not.
                          
			          
                        
			            #assigning auth_token at the time of registration
			            @user.assign_authentication_token
			            if !params[:user][:registartion_no].nil?
                           @user.registartion_no = params[:user][:registartion_no]
			            end 
			            if !params[:user][:Practising_area_name].nil?
                           @user.Practising_area_name = params[:user][:Practising_area_name]
			            end 
			            if !params[:user][:phone_no].nil?
                           @user.phone_no = params[:user][:phone_no]
			            end 
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
			                                :data => { :auth_token => @user.authentication_token,
			                                          :id => @user.id.to_s,
			                                          :name => @user.name,
			                                          :Practising_area_name =>@user.Practising_area_name

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


end 