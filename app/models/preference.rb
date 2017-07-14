class Preference 
  include Mongoid::Document
  include Mongoid::Timestamps


    #Associations
    belongs_to :user 
    
    field :brand_name,                :type => String
    field :type_of_implant,           :type => String
    field :surgery_type,              :type => String
    field :surgical_approach,         :type => String
    field :weight_unit,               :type => String
    field :height_unit,               :type => String 
    field :computer_nav ,             type: Boolean, :default => false
    field :tibia_type,                :type => String
    field :tibia_bearing ,            :type => String
    field :patella_resurfaced ,       :type => Boolean,  :default => false
    field :tibia_stem,                type: Boolean, :default => false
    field :femur_stem,                type: Boolean,  :default => false




    def as_json(options={})
    {
      :_id =>id.to_s,
      :brand_name =>brand_name,
      :type_of_implant =>type_of_implant,
      :surgery_type =>surgery_type,
      :surgical_approach =>surgical_approach,
      :weight_unit =>weight_unit,
      :height_unit => height_unit,
      :computer_nav =>computer_nav ,
      :tibia_type =>tibia_type ,
      :tibia_bearing =>tibia_bearing,
      :patella_resurfaced =>patella_resurfaced,
      :tibia_stem =>tibia_stem,
      :femur_stem =>femur_stem

    }
    end 



end 