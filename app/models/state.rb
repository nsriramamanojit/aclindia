#Author: Chaitanya Ram
#Model: State Inforamtion
#---------------------------------
class State < ActiveRecord::Base
	#relation
	belongs_to :country
	has_many :cities

	#Method: Indexing
	define_index do
		indexes name
		indexes country.name
	#with{}
		has country_id
	end
end
