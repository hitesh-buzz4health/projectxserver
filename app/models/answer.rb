class Answer 


  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :secure_score , autosave: true
  belongs_to :question     , autosave: true 
  belongs_to :option       , autosave: true 
  





end 