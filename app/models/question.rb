class Question

  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :options ,  autosave: true 
  belongs_to :score ,  autosave: true 


  field :question_title ,                  :type => String      
  field :category ,                        :type => String 


  def as_json(options={})
  {
     
     :_id => id.to_s,
  	 :question_title => question_title ,
     :category => category,
  	 :options => self.options.as_json(:only => %w[_id option value])
  }
  end 




end 