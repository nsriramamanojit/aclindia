#Author: Chaitanya Ram
#Model: Country
#---------------------------------
class Country < ActiveRecord::Base
	#relations
	has_many :states
	has_many :cities #, :through => :states

	#Method: Indexing
	define_index do
		indexes name
	end
end
