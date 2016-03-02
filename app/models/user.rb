class User < ActiveRecord::Base
	has_secure_password
	has_many :messages
	has_many :comments
	has_many :videos
	has_many :bands

	validates_presence_of :fname, :lname, :city, :state, :email, :username
	validates_presence_of :password, on: :create 


has_attached_file :avatar, :styles => {:large => "500x500>", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png" 
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/



end
