class Implant 
  include Mongoid::Document
  include Mongoid::Timestamps


  field :brand_name,                       :type => String
  field :type_of_implant,                  :type => String
  field :side_implant_used,                :type => String 



end 