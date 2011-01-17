#------------------------------
#Author: Chaitanya Ram N
#Model: Commodity Category Information
#--------------------------------
class Category < ActiveRecord::Base
	#relations
	has_many :subcategories
	has_many :products #, :through => :subcategories

	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
	end
end
