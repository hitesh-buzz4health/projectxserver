class SecureScore

  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :patient , autosave: true
  belongs_to :score ,  autosave: true 
  has_many :answers , autosave: true

  # this is a work around because we want to create a relation ship in 
  # which   Secure Score can exist with and without surgery we will only save one 
  # surgery  in a secured score 
  has_and_belongs_to_many :surgeries , autosave: true


  field :patient_score ,            :type => Integer ,  :default => 0  
  field :score_date ,               :type => Date 
  
 paginates_per  25

  
  def as_json(options={})

    if options[:answer]  
  { 
      :_id => id.to_s,
      :surgery_id => self.surgeries[0].id.to_s,
      :patient_score => patient_score,
      :score_date => score_date,
      :type_of_score  => self.score.type_of_score,
      :anatomy => self.score.anatomy,
      :answers => self.answers.as_json
    }
    else
   {
       :_id => id.to_s,
      :patient_score => patient_score,
      :score_date => score_date,
      :type_of_score  => self.score.type_of_score,
      :anatomy => self.score.anatomy
    }

  end         

  end 
 



end 