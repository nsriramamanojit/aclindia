#------------------------------
#Author: Chaitanya Ram N
#Model: Seal Information
#--------------------------------
class Seal < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
