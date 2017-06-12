class User
  include Mongoid::Document
  include Mongoid::Timestamps


  #Associations 
  has_one :preference
  has_and_belongs_to_many :patients , autosave: true
  has_many :surgeries     , autosave: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 




  
  ## Database authenticatable
  field :email,              type: String


  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String
#   #authentication token
  field :authentication_token, type: String
  field :name,                       type: String
  field :license_no,                 type: String
  field :specialization,             type: String
  field :practising_area_name,       type: String 
  field :phone_no,                   type: String
  field :profile_pic ,          type: String

  index({email: 1 } , {unique: true})
  index({name: 1 } )
  index({authentication_token: 1 } )



  
   def assign_authentication_token
    if authentication_token.nil?
      self.authentication_token = generate_authentication_token
    end
   end

    
   


  def generate_authentication_token
    loop do
      token = Devise.friendly_token
      break token unless User.where(authentication_token: token).first
    end
  end

  def self.find_by_id(id)
      if !id.nil?
        user = User.where(_id: BSON::ObjectId(id)).first
        return user 
      end 
  end 

  def as_json(options={})
  {
      :id => id.to_s ,
      :auth_token => authentication_token ,
      :name => name ,
      :license_no => license_no ,
      :Practising_area_name => practising_area_name,
      :phone_no => phone_no ,
      :profile_pic => profile_pic

  }
 end 
 
 

 
end
