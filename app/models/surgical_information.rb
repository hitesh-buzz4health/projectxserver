class SurgicalInformation

  include Mongoid::Document

    field :date_of_surgery,                   :type => Time 
    field :patient_name,                      :type => String,  :default => ''
    field :surgery_for,                       :type => String, :default => ''
    field :nature_of_surgery ,                :type => String, :default => ''
    field :surgical_approach,                 :type => String, :default => ''    
    field :computer_nav,                      :type => Boolean, :default => false













end 