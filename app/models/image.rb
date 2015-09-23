class Image < ActiveRecord::Base
	belongs_to :page
	belongs_to :post

	validates_presence_of :photo

	has_attached_file :photo, styles: { medium: "500x500>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
