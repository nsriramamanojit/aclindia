class Userrole < ActiveRecord::Base

	#validations
	validates_presence_of :name
	validates_uniqueness_of :name
  	validates_length_of :description, :maximum => 100,
    :too_long => "Maximum %{count} characters allowed"

	#Method: Indexing
	define_index do
		indexes name
	end
end
