#Author: Chaitanya Ram
#Model: Customer
#---------------------------------
class Customer < ActiveRecord::Base
	default_scope :order => 'customername'

	#validations
 	validates_presence_of :customername
	validates_uniqueness_of :customername
  	validates_length_of :customername, :maximum => 100,
    :too_long => "%{count} characters is the maximum allowed"

	#Method: Indexing
	define_index do
		indexes customername
		indexes customerid
	end
		
	#method define maximum of customercode
	def max
		checkrecords = Customer.count
		if checkrecords == 0
			currentyear = Time.new.year
			maxvalue = "CU/" + currentyear.to_s + "/1"
		else
		   maxid = Customer.maximum('id') + 1 #Maximum of Id 
		   currentyear = Time.new.year
		   maxvalue = "CU/" + currentyear.to_s + "/" + maxid.to_s()
		   		   
		end
	end
	#end: max

end
