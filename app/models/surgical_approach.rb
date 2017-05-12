class SurgicalApproach

  include Mongoid::Document
  include Mongoid::Timestamps
    
  has_many  :surgeries , autosave: true

  field :name,                   :type => String
  field :type_of_surgery,        :type => String 


  def as_json( options={})
  	{
  	 :_id => id.to_s,
  	 :name => name ,
  	 :type_of_surgery => type_of_surgery

     }
  end 



end 