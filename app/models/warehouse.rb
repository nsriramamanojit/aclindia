#------------------------------
#Author: Chaitanya Ram N
#Model: Ware house Information
#--------------------------------
class Warehouse < ActiveRecord::Base

	#validations
	validates :whnickname, :presence =>true

	#Method: Indexing
	define_index do
		indexes whnickname
		indexes whnumber
	end
end
