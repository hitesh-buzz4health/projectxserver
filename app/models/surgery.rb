class Surgery

  include Mongoid::Document
   include Mongoid::Timestamps

 belongs_to :surgical_approach , autosave: true
 has_and_belongs_to_many :secure_scores , autosave: true
   
# Associations  
 belongs_to :patient 
 has_and_belongs_to_many :knee_implants , autosave: true 
 belongs_to :diagnosis , autosave: true 
 paginates_per 25


    field :date_of_surgery,                   :type => Date 
    field :surgery_for,                       :type => String
    field :nature_of_surgery ,                :type => String
    field :type_of_surgery,                   :type => String 
    field :size_of_implant,                   :type => Integer,  :default => 0
    field :computer_nav,                      :type => Boolean, :default => false


  def as_json(options={})

    if options[:surgery_list]
  	{

     :_id => id.to_s ,
     :date_of_surgery => date_of_surgery ,
     :type_of_surgery => type_of_surgery


  	}
   
  else
    {

       :_id => id.to_s ,
     :date_of_surgery => date_of_surgery ,
     :surgery_for => surgery_for,
     :nature_of_surgery => nature_of_surgery,
     :type_of_surgery => type_of_surgery,
     :size_of_implant =>size_of_implant,
     :computer_nav => computer_nav,
     :surgical_approach => self.surgical_approach,
     :implants => self.knee_implants


  }
  end 
end 



end 