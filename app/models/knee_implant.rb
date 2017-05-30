class KneeImplant < Implant

  include Mongoid::Document
  include Mongoid::Timestamps
    

    
  has_and_belongs_to_many :surgeries , autosave: true 


  
  field :tibia_type,                       :type => String
  field :tibia_bearing ,                   :type => String 
  field :patella_resurfaced,               :type => Boolean,  :default => false
  field :tibia_stem,                       :type => Boolean,  :default => false
  field :femur_stem,                       :type => Boolean,  :default => false  # the value of this variable is not yet decided.



 def as_json(options={})
 { 
    :_id => id.to_s ,
   :brand_name => brand_name ,
   :type_of_implant => type_of_implant,
   :side_implant_used => side_implant_used,
   :tibia_type => tibia_type,
   :tibia_bearing => tibia_bearing,
   :patella_resurfaced => patella_resurfaced,
   :tibia_stem => tibia_stem ,
   :femur_stem  => femur_stem


 }
end

end 



