#Author: Chaitanya Ram
#Model: Central Lab
#---------------------------------
class Labcentral < ActiveRecord::Base
	#Relations
	has_many :labregionals
	has_many :lablocationals,:through => :labregionals

	#validations
	validates :labname, :presence =>true

	#method define maximum of labid
	def max
		checkrecords = Labcentral.count
		if checkrecords == 0
			maxvalue = "CEN/1"
		else
		   maxid = Labcentral.maximum('id') + 1 #Maximum of Id 
           maxvalue = "CEN/" + maxid.to_s()
		end
	end
	#end: max

	#Method: Indexing
	define_index do
		indexes name
		indexes labid
	end

#rough:
#year = Time.now.year #Current System Year
#maxvalue = "CEN/" + year.to_s() + "/" + maxid.to_s() 
end
