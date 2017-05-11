class KneeImplant 

  include Mongoid::Document
  include Mongoid::Timestamps

    
  has_and_belongs_to_many :surgeries , autosave: true ,, uniq: false 


  field :brand_name,                       :type => String
  field :type_of_implant,                  :type => String
  field :tibia_type,                       :type => Boolean,  :default => false
  field :tibia_bearing ,                   :type => Boolean,  :default => false
  field :patella_resurfaced,               :type => Boolean,  :default => false
  field :tibia_stem,                       :type => Boolean,  :default => false
  field :femur_stem,                       :type => Boolean,  :default => false  # the value of this variable is not yet decided.






end 





