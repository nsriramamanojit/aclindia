#Author: Chaitanya Ram
#Model: Country
#---------------------------------
class Country < ActiveRecord::Base
	#relations
	has_many :states
	has_many :cities #, :through => :states

	#validations
 	validates_presence_of :name
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
