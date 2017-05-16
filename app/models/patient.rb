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
    field :surgeon_name,                      :type => String
    field :name,                              :type => String
    field :date_of_birth,                     :type  => Date
    field :age ,                              :type => Integer,  :default => 0
    field :sex ,                              :type => String
    field :height,                            :type => Integer,  :default => 0
    field :weight,                            :type => Integer,  :default => 0

    field :unique_id,                         :type => String









end 