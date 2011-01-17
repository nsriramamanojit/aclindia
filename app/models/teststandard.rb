#------------------------------
#Author: Chaitanya Ram N
#Model: Test Standard Information
#--------------------------------
class Teststandard < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
