#------------------------------
#Author: Chaitanya Ram N
#Model: Sample Place Information
#--------------------------------
class Sampleplace < ActiveRecord::Base
	#validations
	validates :name, :presence =>true
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
