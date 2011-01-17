#------------------------------
#Author: Chaitanya Ram N
#Model: Sample Units Information
#--------------------------------
class Sampleunit < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
