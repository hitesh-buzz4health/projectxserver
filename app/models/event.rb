class Event 

  include Mongoid::Document
  include Mongoid::Timestamps


field :name   ,     :type => String
field :coordinates ,:type => Array 


def as_json(options={})
 {
     :_id => id.to_s,
     :name => name,
     :coordinates => coordinates
 }
 end 



end 