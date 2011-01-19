#------------------------------
#Author: Chaitanya Ram N
#Model: Sample Condition Information
#--------------------------------
class Samplecondition < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
