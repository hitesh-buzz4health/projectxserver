class Patient
  include Mongoid::Document
  include Mongoid::Timestamps
  include Sunspot::Mongo
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

  # searchable for solar
  searchable do 
    text :name ,      :stored => true
    text :email_id ,  :stored => true
    
    #defining user query 
    string :user_ids  ,:multiple => true
  end 

  after_save { |obj| Sunspot.index!(obj) }
  after_destroy {|obj| obj.remove_from_index; Sunspot.commit}



 # defining indexes 
  index({age: 1 } )


    def as_json(options={})

     if options[:simple_query]  
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
        :profile_pic => profile_pic,
        :surgeries_count => self.surgeries.count
    }else{

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
        :profile_pic => profile_pic,
        :diagnoses => self.diagnoses.as_json(),
        :secured_scores => self.secure_scores.as_json({:answer => true})


    }


    end 
  end  








end 