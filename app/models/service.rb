class Service < ApplicationRecord

	belongs_to :estimate, dependent: :destroy
	# validates :name, :type
	# validates :price, numericality: { greater_than: 0 }
	# validates_attachment_presence :image (For design examples etc) //Paperclip validation

end
