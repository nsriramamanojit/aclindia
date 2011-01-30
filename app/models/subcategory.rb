#------------------------------
#Author: Chaitanya Ram N
#Model: Commodity Sub Category Information
#--------------------------------
class Subcategory < ActiveRecord::Base

	default_scope :order => 'name'

	#relations
	belongs_to :category
	has_many   :products 


	#validations
	validates :name, :presence =>true
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
		indexes category.name

	#with{}
		has category_id
	end

end
