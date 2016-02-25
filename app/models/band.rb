class Band < ActiveRecord::Base
	

has_attached_file :avatar, :styles => {:large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

has_attached_file :mp3
validates_attachment :mp3, :content_type => { :content_type =>["audio/mpeg", "audio/mp3"] }, :file_name => {:matches => [/mp3\Z/]}

has_attached_file :video
validates_attachment :mp4, :content_type => { :content_type =>["video/mp4"] }, :file_name => {:matches => [/mp4\Z/]}

end
