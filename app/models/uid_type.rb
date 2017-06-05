class UidType

   include Mongoid::Document
   include Mongoid::Timestamps

    field :name,                      :type => String

  def as_json(options={})
  {
      :name => name

  }
 end 



end 