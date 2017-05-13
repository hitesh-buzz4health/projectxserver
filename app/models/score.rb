class Score
	
  include Mongoid::Document
  include Mongoid::Timestamps
 

  
 has_many   :secure_scores , autosave: true 
 has_many :questions ,   autosave: true 




 field :type_of_score ,                   :type => String 
 field :anatomy ,                         :type => String 

  def as_json(options={})
 {
    :_id => id.to_s , 
    :type_of_score => type_of_score,
    :anatomy   => anatomy ,
    :questions => self.questions.as_json()



 }
 end 


 


end 