#------------------------------
#Author: Chaitanya Ram N
#Model: Test Required  Information
#--------------------------------
class Testrequire < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
