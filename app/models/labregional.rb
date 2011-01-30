#Author: Chaitanya Ram
#Model: Regional Lab
#---------------------------------
class Labregional < ActiveRecord::Base

	default_scope :order => 'labname'

	#Relations
	belongs_to :labcentral
	has_many   :lablocationals

	#validations
	validates :labname, :presence =>true
    validates_length_of :pincode, :is => 6

	#method define maximum of labid
	def max
		checkrecords = Labregional.count
		if checkrecords == 0
			maxvalue = "REG/1"
		else
		   maxid = Labregional.maximum('id') + 1 #Maximum of Id 
           maxvalue = "REG/" + maxid.to_s()
		end
	end
	#end: max

	#Method: Indexing
	define_index do
		indexes name
		indexes labid
		indexes labcentral.labid

	#with{}
		has labcentral_id
	end

end
