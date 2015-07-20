class Post < ActiveRecord::Base
	include Bootsy::Container
	
	belongs_to :page

	validates_presence_of :name
end
