class Preference
  include Mongoid::Document



    field :type_of_surgery,           :type => String
    field :surgical_approach,         :type => String
    field :computer_nav ,             type: Boolean, :default => false
    field :tibia_type,                :type => String
    field :tibia_bearing ,            :type => String
    field :patella_resurfaced ,       :type => String
    field :tibia_bearing ,            :type => String
    field :tibia_stem,                type: Boolean, :default => false
    field :femur_stem,                type: Boolean,  :default => false





end 