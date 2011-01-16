#------------------------------
#Author: Chaitanya Ram N
#Model: City Information
#--------------------------------
class City < ActiveRecord::Base
	#relation
	belongs_to :state
	belongs_to :country


	#Method: Indexing
	define_index do
		indexes name
		indexes country.name
		indexes state.name
	#with{}
		has country_id,state_id
	end
end
