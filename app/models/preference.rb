class Preference
  include Mongoid::Document



    field :type_of_surgery,           type: String, default: ""
    field :surgical_approach,         type: String, default: ""
    field :computer_nav ,             type: Boolean, :default => false
    field :tibia_type,                type: String, default: ""
    field :tibia_bearing ,            type: String, default: ""
    field :patella_resurfaced ,       type: String, default: ""
    field :tibia_bearing ,            type: String, default: ""
    field :tibia_stem,                type: String, default:"" #we need to consider them once more because they values were not confirmed 
    field :femur_stem,                type: String,  defult: "" #we need to consider them once more because they values were not confirmed 






tibia stem




end 