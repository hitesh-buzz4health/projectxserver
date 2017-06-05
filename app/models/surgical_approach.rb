class SurgicalApproach

  include Mongoid::Document
  include Mongoid::Timestamps
    
  has_many  :surgeries , autosave: true

  field :name,                :type => String
  field :surgery_type,        :type => String 


  def as_json( options={})
  	{
  	 :_id => id.to_s,
  	 :name => name ,
  	 :surgery_type => surgery_type

     }
  end 



end 