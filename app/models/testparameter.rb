#------------------------------
#Author: Chaitanya Ram N
#Model: Test Parameter Information
#--------------------------------
class Testparameter < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
