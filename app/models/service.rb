class Service < ApplicationRecord
	validates :name, :type
	validates :price, numericality: { greater_than: 0 }
	#validates_attachment_presence :image (For design examples etc) #Paperclip validation
end

class Devops < Service
end

class Design < Service
end