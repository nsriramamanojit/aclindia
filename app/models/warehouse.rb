#------------------------------
#Author: Chaitanya Ram N
#Model: Ware house Information
#--------------------------------
class Warehouse < ActiveRecord::Base

	#validations
	validates :whnickname, :presence =>true
	validates_uniqueness_of :whnickname
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes whnickname
		indexes whnumber
	end
end
