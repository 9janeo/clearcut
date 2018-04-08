class Consultant < ApplicationRecord

	include ActiveModel::AttributeMethods
	 
	  attribute_method_prefix 'reset_'
	  attribute_method_suffix '_highest?'
	  define_attribute_methods 'rate'
	 
	  attr_accessor :rate
	 
	  private
	    def reset_attribute(attribute)
	      send("#{attribute}=", 0)
	    end
	 
	    def attribute_highest?(attribute)
	      send(attribute) > 100
	    end
	end
	 
	consultant = Consultant.new
	consultant.rate = 110
	consultant.rate_highest?  # => true
	consultant.reset_rate     # => 0
	consultant.rate_highest?  # => false

	def self.twitter {
		#call API
	}

	def self.facebook {
		#call API
	}

	def self.intagram {
		#call API
	}

end
