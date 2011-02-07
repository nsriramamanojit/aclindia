#------------------------------
#Author: Chaitanya Ram N
#Model: Ware house Information
#--------------------------------
class Warehouse < ActiveRecord::Base

	default_scope :order => 'whnickname'

	#validations
	validates :whnickname, :presence =>true
	validates_uniqueness_of :whnickname


	#Method: Indexing
	define_index do
		indexes whnickname
		indexes whnumber
	end
end
