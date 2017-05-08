class Implant 

  include Mongoid::Document
  include Mongoid::Timestamps

    
  belongs_to :surgical_information


  field :brand_name,                       :type => String
  field :type_of_implant,                  :type => String
  field :tibia_type,                       :type => String
  field :tibia_bearing ,                   :type => String
  field :patella_resurfaced,               :type => Boolean,  :default => false
  field :tibia_stem,                       :type => Boolean,  :default => false
  field :femur_stem,                       :type => Boolean,  :default => false  # the value of this variable is not yet decided.






end 