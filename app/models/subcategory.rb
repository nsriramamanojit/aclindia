#------------------------------
#Author: Chaitanya Ram N
#Model: Commodity Sub Category Information
#--------------------------------
class Subcategory < ActiveRecord::Base
	#relations
	belongs_to :category

	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
		indexes category.name

	#with{}
		has category_id
	end

end
