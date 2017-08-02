class CustomPreference

  include Mongoid::Document
  include Mongoid::Timestamps


  #relationship belongs to user and preference 
  belongs_to :preference   , autosave: true
  belongs_to :user         , autosave: true 



field :name   ,        :type => String 
field :section   ,     :type => String 
field :value   ,       :type => Array
field :type ,          :type => String
field :opted_value  ,  :type => String 






 def as_json(options={})
 {
     :_id => id.to_s,
     :name => name ,
     :section => section ,
     :value => value ,
     :type => type ,
     :opted_value => opted_value

 }
 end 




end 