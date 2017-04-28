class SurgicalInformation

  include Mongoid::Document

    field :date_of_surgery,                   :type => Date 
    field :patient_name,                      :type => String
    field :surgery_for,                       :type => String
    field :nature_of_surgery ,                :type => String
    field :surgical_approach,                 :type => String
    field :computer_nav,                      :type => Boolean, :default => false













end 