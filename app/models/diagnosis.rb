class Diagnosis

  include Mongoid::Document



has_many :medical_images , autosave: true 
belongs_to :patient  , autosave: true
has_one :surgery  , autosave: true


field :diagnosis_outcome   ,     :type => String 
field :image_tags          ,     :type => Array





 def as_json(options={})
 {
     :_id => id.to_s,
     :diagnosis_outcome => diagnosis_outcome,
     :image_tags => image_tags ,   
     :medical_images => self.medical_images.to_json(),
     :surgery => self.surgery.as_json()
	
 }
 end 




end 