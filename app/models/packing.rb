#------------------------------
#Author: Chaitanya Ram N
#Model: Packing Information
#--------------------------------
class Packing < ActiveRecord::Base

	default_scope :order => 'name'

	#validations
	validates :name, :presence =>true
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
