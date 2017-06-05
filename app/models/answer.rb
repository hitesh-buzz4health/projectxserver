class Answer 


  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :secure_score , autosave: true
  belongs_to :question     , autosave: true 
  belongs_to :option      
  

  def as_json(options={}){
     
     :_id => id.to_s,
     :question => self.question.as_json ,
     :option => self.option.as_json

  }
  end 


end 