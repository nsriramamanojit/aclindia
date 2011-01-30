#------------------------------
#Author: Chaitanya Ram N
#Model: Test Parameter Information
#--------------------------------
class Testparameter < ActiveRecord::Base

	default_scope :order => 'name'

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
