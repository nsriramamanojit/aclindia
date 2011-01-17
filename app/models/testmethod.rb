#------------------------------
#Author: Chaitanya Ram N
#Model: Test Method Information
#--------------------------------
class Testmethod < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
