class SecureScore

  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :patient , autosave: true
  belongs_to :score ,  autosave: true 

  field :patient_score ,            :type => Integer ,  :default => 0  
  field :score_date ,       :type => Date 
  

  
  def as_json(options={})
  {
     :_id => id.to_s,
     :patient_score => patient_score,
     :score_date => score_date,
     :type_of_score  => self.score.type_of_score,
     :anatomy => self.score.anatomy
        
  	}
  end 
 



end 