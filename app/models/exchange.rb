#------------------------------
#Author: Chaitanya Ram N
#Model: Exchange Information
#--------------------------------
class Exchange < ActiveRecord::Base

	default_scope :order => 'name'

	#validations
	validates_presence_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "Maximum %{count} characters allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
