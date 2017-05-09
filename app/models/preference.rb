class Preference
  include Mongoid::Document
  include Mongoid::Timestamps


    #Associations
    belongs_to :user 
    

    field :type_of_surgery,           :type => String
    field :surgical_approach,         :type => String
    field :computer_nav ,             type: Boolean, :default => false
    field :tibia_type,                :type => String
    field :tibia_bearing ,            :type => String
    field :patella_resurfaced ,       :type => Boolean,  :default => false
    field :tibia_stem,                type: Boolean, :default => false
    field :femur_stem,                type: Boolean,  :default => false





end 