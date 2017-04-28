class Patient
  include Mongoid::Document


    field :surgeon_name,                      :type => String,  :default => ''
    field :patient_name,                      :type => String,  :default => ''
    field :date_of_birth,                     :type  => Time
    field :age ,                              :type => Integer,  :default => 0
    field :sex ,                              :type => String,  :default => ''
    field :height,                            :type => Integer,  :default => 0
    field :weight,                            :type => Integer,  :default => 0

    field :unique_id,                         :type => String,  :default => ''

    field :knee_score ,                       :type => Integer,  :default => 0








end 