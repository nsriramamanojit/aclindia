#------------------------------
#Author: Chaitanya Ram N
#Model: City Information
#--------------------------------
class City < ActiveRecord::Base

	default_scope :order => 'country_id'
	#relation
	belongs_to :state
	belongs_to :country

	#validations
	validates_presence_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
		indexes country.name
		indexes state.name
	#with{}
		has country_id,state_id
	end
end
