#Author: Chaitanya Ram
#Model: Location Lab
#---------------------------------
class Lablocational < ActiveRecord::Base

	default_scope :order => 'labname'

	#Relations
	belongs_to :labregional
	belongs_to :labcentral
	#validations
	validates :labname, :presence =>true
    validates_length_of :pincode, :is => 6

	#method define maximum of labid
	def max
		checkrecords = Lablocational.count
		if checkrecords == 0
			maxvalue = "LOC/1"
		else
		   maxid = Lablocational.maximum('id') + 1 #Maximum of Id 
           maxvalue = "LOC/" + maxid.to_s()
		end
	end
	#end: max

	#Method: Indexing
	define_index do
		indexes name
		indexes labid
		indexes labregional.labid
		indexes labcentral.labid

	#with{}
		has labregional_id,labcentral_id
	end
end
