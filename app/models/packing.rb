#------------------------------
#Author: Chaitanya Ram N
#Model: Packing Information
#--------------------------------
class Packing < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
