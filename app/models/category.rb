#------------------------------
#Author: Chaitanya Ram N
#Model: Commodity Category Information
#--------------------------------
class Category < ActiveRecord::Base

	default_scope :order => 'name'
	#relations
	has_many :subcategories
	has_many :products #, :through => :subcategories

	#validations
	validates_presence_of :name, :presence =>true
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
