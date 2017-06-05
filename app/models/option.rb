class Option



  include Mongoid::Document
  include Mongoid::Timestamps
  

   belongs_to :question , autosave: true 




  field :option_text,                       :type => String
  field :value,                             :type => Integer,  :default => 0
  




  def as_json( options={})
  	{
  	 :_id => id.to_s,
  	 :option => option_text ,
  	 :value => value 

     }
  end 






end 