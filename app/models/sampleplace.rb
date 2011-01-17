#------------------------------
#Author: Chaitanya Ram N
#Model: Sample Place Information
#--------------------------------
class Sampleplace < ActiveRecord::Base
	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
