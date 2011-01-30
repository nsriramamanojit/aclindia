#Author: Chaitanya Ram
#Model: State Inforamtion
#---------------------------------
class State < ActiveRecord::Base

	default_scope :order => 'name'

	#relation
	belongs_to :country
	has_many :cities

	#validations
	validates_presence_of :name
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes name
		indexes country.name
	#with{}
		has country_id
	end
end
