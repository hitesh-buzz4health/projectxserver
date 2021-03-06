class Patient
  include Mongoid::Document
  include Mongoid::Timestamps

     #Associations
     has_and_belongs_to_many :users , autosave: true
     has_many :surgeries , autosave: true
     has_many :diagnoses  , autosave: true
     #different types of scores 
     has_many :secure_scores  , autosave: true

    #do we need surgeon name in this model
    field :name,                              :type => String
    field :date_of_birth,                     :type  => Date
    field :age ,                              :type => Integer,  :default => 0
    field :sex ,                              :type => String
    field :height,                            :type => Integer,  :default => 0
    field :weight,                            :type => Integer,  :default => 0
    field :unique_id,                         :type => String
    field :unique_id_type,                    :type => String
    field :email_id,                          :type =>  String
    field :phone_no,                          :type => Integer,  :default => 0   
    field :profile_pic,                       :type => String                


    def as_json(options={})
    {   
        :_id => id.to_s,
        :name => name,
        :date_of_birth => date_of_birth,
        :age => age,
        :sex => sex,
        :height => height,
        :weight => weight,
        :unique_id => unique_id,
        :unique_id_type => unique_id_type,
        :email_id => email_id ,
        :phone_no => phone_no ,
        :profile_pic => profile_pic
    }
    end  









end 