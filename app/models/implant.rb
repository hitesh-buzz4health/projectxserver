class Implant 

  include Mongoid::Document



  field :brand_name,                      :type => String,  :default => ''
  field :type_of_implant,                  :type => String,  :default => ''
  field :tibia_type,                        :type => String,  :default => ''
  field :tibia_bearing ,                  :type => String,  :default => ''
  field :patella_resurfaced,               :type => Boolean,  :default => false
  field :tibia_stem,                       :type => Boolean,  :default => false
  field :femur_stem,                       :type => String,  :default => ''  # the value of this variable is not yet decided.






end 