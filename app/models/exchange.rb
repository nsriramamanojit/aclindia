#------------------------------
#Author: Chaitanya Ram N
#Model: Exchange Information
#--------------------------------
class Exchange < ActiveRecord::Base

	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
