class Surgery

  include Mongoid::Document
   include Mongoid::Timestamps

 # belongs_to :surgical_approach 
   
# Associations  
 belongs_to :patient 
 has_and_belongs_to_many :knee_implants , autosave: true 
    field :date_of_surgery,                   :type => Date 
    field :patient_name,                      :type => String
    field :surgery_for,                       :type => String
    field :nature_of_surgery ,                :type => String
    field :surgical_approach,                 :type => String
    field :type_of_surgery,                   :type => String 
    field :size_of_implant,                   :type => Integer,  :default => 0
    field :computer_nav,                      :type => Boolean, :default => false













end 