  class MedicalImage 


  include Mongoid::Document
  include Mongoid::Timestamps


  belongs_to :diagnosis , autosave: true

  field :image_tags,              :type => Array
  field :image_type,              :type => String # "preop" "postop" , normal



# Image metadata : Cloudinary
  field :url,                  :type => String 
  field :secure_url,           :type => String
  field :base_url,             :type => String
  field :public_id,            :type => String
  field :tags,                 :type => String # comma separated tags 
  field :width,                :type => Integer, :default => 0
  field :height,               :type => Integer, :default => 0
  field :format,               :type => String # e.g. 'jpg'  
  field :bytes,                :type => Integer
  field :version,              :type => String
  field :activity_at,          :type => Time 
  field :image_deleted,        :type => Boolean, :default => false
  field :download_url,         :type => String



  def upload(url, tags = "default_image_tag")

  #Upload using cloudinary
  result = Cloudinary::Uploader.upload(url, :tags => tags)
  self.base_url = result["url"]
  self.secure_url = result["secure_url"]
  self.public_id = result["public_id"]
  self.width = result["width"]
  self.height = result["height"]
  self.version = result["version"]
  self.bytes = result["bytes"]
  self.format = result["format"]
  ### Sample result below
  #{
  #  "url" => 'http://res.cloudinary.com/demo/image/upload/v1371281596/sample.jpg',
  #  "secure_url" => 
  #           'https://res.cloudinary.com/demo/image/upload/v1371281596/sample.jpg',
  #  "public_id" => 'sample',
  #  "version" => '1312461204',
  #  "format" => 'jpg',
  #  "width" => 864,
  #  "height" => 564,
  #  "bytes" => 120253       
  # }

end
  



 def as_json(options={})
 {
     :_id => id.to_s,
     :image_tags => image_tags,
     :image_type => image_type,
     :url => url ,
     :secure_url => secure_url ,
     :base_url =>base_url,
     :public_id => public_id,
     :tags => tags,
     :width => width,
     :height => height,
     :format => format,
     :bytes => bytes ,
     :version => version ,
     :activity_at => activity_at,
     :image_deleted => image_deleted,
     :download_url =>download_url
  
 }
 end 



 
 
 



end 