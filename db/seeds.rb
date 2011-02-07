# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#Delete Existing Data
#Labcentral.delete_all
#Labregional.delete_all
#Lablocational.delete_all
#State.delete_all
#Country.delete_all
#City.delete_all
#Labcentral.delete_all
#Category.delete_all
#Exchange.delete_all
#Packing.delete_all
#Product.delete_all
#Sampleplace.delete_all
#Sampleunit.delete_all
#Seal.delete_all
#Subcategory.delete_all
#Testmethod.delete_all
#Testrequire.delete_all
#Teststandard.delete_all
#User.delete_all
#Warehouse.delete_all
#End: Delete Tables

#Countries
Country.create(:name => 'INDIA', :description => 'INDIA', :status => 'Active')

#states
State.create(:country_id => 1, :name => 'Andhra Pradesh', :description => 'Andhra Pradesh', :status => 'Active')
State.create(:country_id => 1, :name => 'Maharashtra', :description => 'Maharashtra', :status => 'Active')
State.create(:country_id => 1, :name => 'Gujarat', :description => 'Gujarat', :status => 'Active')
State.create(:country_id => 1, :name => 'Assam', :description => 'Assam', :status => 'Active')
State.create(:country_id => 1, :name => 'Assam', :description => 'Assam', :status => 'Active')
State.create(:country_id => 1, :name => 'Chhattisgarh', :description => 'Chhattisgarh', :status => 'Active')
State.create(:country_id => 1, :name => 'Goa', :description => 'Goa', :status => 'Active')
State.create(:country_id => 1, :name => 'Haryana', :description => 'Haryana', :status => 'Active')
State.create(:country_id => 1, :name => 'Himachal Pradesh', :description => 'Himachal Pradesh', :status => 'Active')
State.create(:country_id => 1, :name => 'Jammu and Kashmir', :description => 'Jammu and Kashmir', :status => 'Active')
State.create(:country_id => 1, :name => 'Jharkhand', :description => 'Jharkhand', :status => 'Active')
State.create(:country_id => 1, :name => 'Karnataka', :description => 'Karnataka', :status => 'Active')
State.create(:country_id => 1, :name => 'Kerala', :description => 'Kerala', :status => 'Active')
State.create(:country_id => 1, :name => 'Madhya Pradesh', :description => 'Madhya Pradesh', :status => 'Active')
State.create(:country_id => 1, :name => 'Manipur', :description => 'Manipur', :status => 'Active')
State.create(:country_id => 1, :name => 'Meghalaya', :description => 'Meghalaya', :status => 'Active')
State.create(:country_id => 1, :name => 'Mizoram', :description => 'Mizoram', :status => 'Active')
State.create(:country_id => 1, :name => 'Nagaland', :description => 'Nagaland', :status => 'Active')
State.create(:country_id => 1, :name => 'Orissa', :description => 'Orissa', :status => 'Active')
State.create(:country_id => 1, :name => 'Punjab', :description => 'Punjab', :status => 'Active')
State.create(:country_id => 1, :name => 'Rajasthan', :description => 'Rajasthan', :status => 'Active')
State.create(:country_id => 1, :name => 'Sikkim', :description => 'Sikkim', :status => 'Active')
State.create(:country_id => 1, :name => 'Tamil Nadu', :description => 'Tamil Nadu', :status => 'Active')
State.create(:country_id => 1, :name => 'Tripura', :description => 'Tripura', :status => 'Active')
State.create(:country_id => 1, :name => 'Uttarakhand', :description => 'Uttarakhand', :status => 'Active')
State.create(:country_id => 1, :name => 'Uttar Pradesh', :description => 'Uttar Pradesh', :status => 'Active')
State.create(:country_id => 1, :name => 'West Bengal', :description => 'West Bengal', :status => 'Active')
State.create(:country_id => 1, :name => 'Andaman and Nicobar Islands', :description => 'Andaman and Nicobar Islands', :status => 'Active')
State.create(:country_id => 1, :name => 'Chandigarh', :description => 'Chandigarh', :status => 'Active')
State.create(:country_id => 1, :name => 'The Government of NCT of Delhi', :description => 'The Government of NCT of Delhi', :status => 'Active')
State.create(:country_id => 1, :name => 'Dadra and Nagar Haveli', :description => 'Dadra and Nagar Haveli', :status => 'Active')
State.create(:country_id => 1, :name => 'Daman and Diu', :description => 'Daman and Diu', :status => 'Active')
State.create(:country_id => 1, :name => 'Lakshadweep', :description => 'Lakshadweep', :status => 'Active')
State.create(:country_id => 1, :name => 'Puducherry', :description => 'Puducherry', :status => 'Active')
State.create(:country_id => 1, :name => 'Dadra and Nagar Haveli', :description => 'Dadra and Nagar Haveli', :status => 'Active')

#citites
City.create(:country_id => 1, :state_id => 1, :name => 'Hyderabad', :description => 'Hyderabad', :status => 'Active')
City.create(:country_id => 1, :state_id => 2, :name => 'Mumbai', :description => 'Mumabi', :status => 'Active')
City.create(:country_id => 1, :state_id => 2, :name => 'Pune', :description => 'Pune', :status => 'Active')

#exchanges
Exchange.create(:name => 'NCDEX', :description => 'www.ncdex.com', :status => 'Active')
Exchange.create(:name => 'NCDEX SPOT', :description => 'www.ncdexspot.com', :status => 'Active')
Exchange.create(:name => 'R SPOT', :description => 'www.reliancespot.com', :status => 'Active')

#labcentrals
Labcentral.create(:labid =>'CEN/1',:labname => 'ACL-Mumbai', :housenumber => 'Shree Shubham Logistics Ltd, 41', :street => 'Kalpataru Synergy',:area => 'Santacruz (East)',:landmark => 'Opp. Hotel Grand Hyatt',:city => 'Mumbai',:state => 'Maharashtra',:country => 'INDIA',:pincode => '400055',:land => '022 3064 2414',:mobile => '022 3064 2414',:fax => '022 3064 2414',:email => 'adhunika.choudhary@kalpatarupower.com',:status => 'Active')

#labregionals
Labregional.create(:labcentral_id => 1,:labid =>'REG/1',:labname => 'ACL-Jodhpur', :housenumber => '', :street => 'Khasra No.183/1 to 3',:area => 'Village-Salawas',:landmark => 'Tehsil- Luni',:city => 'Jodhpur',:state => 'Rajasthan',:country => 'INDIA',:pincode => '342802',:land => '09587018006',:mobile => '09587018006',:fax => '022 3064 2414',:email => 'swapnil.singh@kalpatarupower.com',:status => 'Active')

#lablocationals
Lablocational.create(:labcentral_id => 1,:labregional_id => 1, :labid =>'LOC/1',:labname => 'SSLL-Mumbai', :housenumber => 'Shree Shubham Logistics Ltd, 41', :street => 'Kalpataru Synergy',:area => 'Santacruz (East)',:landmark => 'Opp. Hotel Grand Hyatt',:city => 'Mumbai',:state => 'Maharashtra',:country => 'INDIA',:pincode => '400055',:land => '022 3064 2414',:mobile => '022 3064 2414',:fax => '022 3064 2414',:email => 'adhunika.choudhary@kalpatarupower.com',:status => 'Active')


#testmethods
Testmethod.create(:name=>'IS:3579-1966',:status => 'Active')
Testmethod.create(:name=>'IS:548(part I)1964',:status => 'Active')
Testmethod.create(:name=>'IS:1797-1985',:status => 'Active')

#teststandards
Teststandard.create(:name=>'IS',:status => 'Active')
Teststandard.create(:name=>'PFA',:status => 'Active')
Teststandard.create(:name=>'AOCS',:status => 'Active')

#testrequires
Testrequire.create(:name=>'As per KVB',:status => 'Active')
Testrequire.create(:name=>'As per Axis Bank',:status => 'Active')
Testrequire.create(:name=>'As per DCBL',:status => 'Active')

#testparametes
Testparameter.create(:name=>'Moisture',:status => 'Active')
Testparameter.create(:name=>'Refractions',:status => 'Active')
Testparameter.create(:name=>'Protein',:status => 'Active')

#sampleplaces
Sampleplace.create(:code=>'Wb',:name=>'Weighbridge',:status=>'Active')
Sampleplace.create(:code=>'Yd',:name=>'Yard',:status=>'Active')
Sampleplace.create(:code=>'Gd',:name=>'Godown',:status=>'Active')

#sampleconditions
Samplecondition.create(:name=>'Unsealed',:status => 'Active')
Samplecondition.create(:name=>'Seal Intact',:status => 'Active')
Samplecondition.create(:name=>'Broken Seal',:status => 'Active')

#sampleunits
Sampleunit.create(:name =>'Grams',:status=>'Active')
Sampleunit.create(:name => 'Kilograms',:status => 'Active')
Sampleunit.create(:name => 'Milli Grams',:status=>'Active')

#seals
Seal.create(:name=>'Sealed',:status => 'Active')
Seal.create(:name=>'Wax Seal',:status => 'Active')
Seal.create(:name=>'Unsealed',:status => 'Active')


#packings
Packing.create(:name=>'In PP or HDPE Bags',:status => 'Active')
Packing.create(:name=>'In Bulk',:status => 'Active')
Packing.create(:name=>'In PP Bags',:status => 'Active')

#categories
Category.create(:name=>'Agricultural',:status => 'Active')
Category.create(:name=>'Dairy',:status => 'Active')
Category.create(:name=>'Beverages',:status => 'Active')

#subcategories
Subcategory.create(:category_id => 1, :name=>'Cereals',:status => 'Active')
Subcategory.create(:category_id => 1, :name=>'Fruits & Vegetables',:status => 'Active')
Subcategory.create(:category_id => 3, :name=>'Fruit Juice',:status => 'Active')

#products
Product.create(:category_id => 1,:subcategory_id => 1, :name=>'Barley',:status => 'Active')
Product.create(:category_id => 1,:subcategory_id => 1, :name=>'Banana',:status => 'Active')
Product.create(:category_id => 3, :subcategory_id => 3,:name=>'Black Current',:status => 'Active')


#warehouses
Warehouse.create(:whnumber=>'GN 1', :whnickname =>'Adinath Industries, GN 1', :whaddress => 'Adinath Industries, Godown No 1, Dhoraji Upleta Highway, Supedi, Dist: Rajkot',:status => 'Active')
Warehouse.create(:whnumber=>'Godown No. 3', :whnickname =>'Agyaram Madangopal, Godown No. 3', :whaddress => 'Agyaram Madangopal, Godown No. 3, Arjuni Morgaon,Ta- Arjuni - Morgaon, Dist- Gondia',:status => 'Active')

