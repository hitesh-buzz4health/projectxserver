class Patient
  include Mongoid::Document


    field :surgeon_name,                      :type => String
    field :patient_name,                      :type => String
    field :date_of_birth,                     :type  => Date
    field :age ,                              :type => Integer,  :default => 0
    field :sex ,                              :type => String
    field :height,                            :type => Integer,  :default => 0
    field :weight,                            :type => Integer,  :default => 0

    field :unique_id,                         :type => String

    field :knee_score ,                       :type => Integer,  :default => 0








end 