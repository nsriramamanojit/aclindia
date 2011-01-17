#------------------------------
#Author: Chaitanya Ram N
#Model: Product Information
#--------------------------------
class Product < ActiveRecord::Base
	#relations
	belongs_to :category
	belongs_to :subcategory

	#validations
	validates :name, :presence =>true

	#Method: Indexing
	define_index do
		indexes name
		indexes category.name
		indexes subcategory.name

	#with{}
		has category_id,subcategory_id
	end
end
