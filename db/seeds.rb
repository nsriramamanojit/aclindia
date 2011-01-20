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
Country.create(:name => 'INDIA', :description => 'INDIA', :status => 'A')

#states
State.create(:country_id => 1, :name => 'Andhra Pradesh', :description => 'Andhra Pradesh', :status => 'A')
State.create(:country_id => 1, :name => 'Maharashtra', :description => 'Maharashtra', :status => 'A')
State.create(:country_id => 1, :name => 'Gujarat', :description => 'Gujarat', :status => 'A')

#citites
City.create(:country_id => 1, :state_id => 1, :name => 'Hyderabad', :description => 'Hyderabad', :status => 'A')
City.create(:country_id => 1, :state_id => 2, :name => 'Mumbai', :description => 'Mumabi', :status => 'A')
City.create(:country_id => 1, :state_id => 2, :name => 'Pune', :description => 'Pune', :status => 'A')

#exchanges
Exchange.create(:name => 'NCDEX', :description => 'www.ncdex.com', :status => 'A')
Exchange.create(:name => 'NCDEX SPOT', :description => 'www.ncdexspot.com', :status => 'A')
Exchange.create(:name => 'R SPOT', :description => 'www.reliancespot.com', :status => 'A')

#labcentrals
Labcentral.create(:labid =>'CEN/1',:labname => 'ACL-Mumbai', :housenumber => 'Shree Shubham Logistics Ltd, 41', :street => 'Kalpataru Synergy',:area => 'Santacruz (East)',:landmark => 'Opp. Hotel Grand Hyatt',:city => 'Mumbai',:state => 'Maharashtra',:country => 'INDIA',:pincode => '400055',:land => '022 3064 2414',:mobile => '022 3064 2414',:fax => '022 3064 2414',:email => 'adhunika.choudhary@kalpatarupower.com',:status => 'A')

#labregionals
Labregional.create(:labcentral_id => 1,:labid =>'REG/1',:labname => 'ACL-Jodhpur', :housenumber => '', :street => 'Khasra No.183/1 to 3',:area => 'Village-Salawas',:landmark => 'Tehsil- Luni',:city => 'Jodhpur',:state => 'Rajasthan',:country => 'INDIA',:pincode => '342802',:land => '09587018006',:mobile => '09587018006',:fax => '022 3064 2414',:email => 'swapnil.singh@kalpatarupower.com',:status => 'A')

#lablocationals
Lablocational.create(:labcentral_id => 1,:labregional_id => 1, :labid =>'LOC/1',:labname => 'SSLL-Mumbai', :housenumber => 'Shree Shubham Logistics Ltd, 41', :street => 'Kalpataru Synergy',:area => 'Santacruz (East)',:landmark => 'Opp. Hotel Grand Hyatt',:city => 'Mumbai',:state => 'Maharashtra',:country => 'INDIA',:pincode => '400055',:land => '022 3064 2414',:mobile => '022 3064 2414',:fax => '022 3064 2414',:email => 'adhunika.choudhary@kalpatarupower.com',:status => 'A')


#testmethods
Testmethod.create(:name=>'IS:3579-1966',:status => 'A')
Testmethod.create(:name=>'IS:548(part I)1964',:status => 'A')
Testmethod.create(:name=>'IS:1797-1985',:status => 'A')

#teststandards
Teststandard.create(:name=>'IS',:status => 'A')
Teststandard.create(:name=>'PFA',:status => 'A')
Teststandard.create(:name=>'AOCS',:status => 'A')

#testrequires
Testrequire.create(:name=>'As per KVB',:status => 'A')
Testrequire.create(:name=>'As per Axis Bank',:status => 'A')
Testrequire.create(:name=>'As per DCBL',:status => 'A')

#testparametes
Testparameter.create(:name=>'Moisture',:status => 'A')
Testparameter.create(:name=>'Refractions',:status => 'A')
Testparameter.create(:name=>'Protein',:status => 'A')

#sampleplaces
Sampleplace.create(:code=>'Wb',:name=>'Weighbridge',:status=>'A')
Sampleplace.create(:code=>'Yd',:name=>'Yard',:status=>'A')
Sampleplace.create(:code=>'Gd',:name=>'Godown',:status=>'A')

#sampleconditions
Samplecondition.create(:name=>'Unsealed',:status => 'A')
Samplecondition.create(:name=>'Seal Intact',:status => 'A')
Samplecondition.create(:name=>'Broken Seal',:status => 'A')

#sampleunits
Sampleunit.create(:name =>'Grams',:status=>'A')
Sampleunit.create(:name => 'Kilograms',:status => 'A')
Sampleunit.create(:name => 'Milli Grams',:status=>'A')

#seals
Seal.create(:name=>'Sealed',:status => 'A')
Seal.create(:name=>'Wax Seal',:status => 'A')
Seal.create(:name=>'Unsealed',:status => 'A')

#warehouses
Warehouse.create(:whnumber=>'GN 1', :whnickname =>'Adinath Industries, GN 1', :whaddress => 'Adinath Industries, Godown No 1, Dhoraji Upleta Highway, Supedi, Dist: Rajkot',:status => 'A')
Warehouse.create(:whnumber=>'Godown No. 3', :whnickname =>'Agyaram Madangopal, Godown No. 3', :whaddress => 'Agyaram Madangopal, Godown No. 3, Arjuni Morgaon,Ta- Arjuni - Morgaon, Dist- Gondia',:status => 'A')

#packings
Packing.create(:name=>'In PP or HDPE Bags',:status => 'A')
Packing.create(:name=>'In Bulk',:status => 'A')
Packing.create(:name=>'In PP Bags',:status => 'A')

#categories
Category.create(:name=>'Agricultural',:status => 'A')
Category.create(:name=>'Dairy',:status => 'A')
Category.create(:name=>'Beverages',:status => 'A')

#subcategories
Subcategory.create(:category_id => 1, :name=>'Cereals',:status => 'A')
Subcategory.create(:category_id => 1, :name=>'Fruits & Vegetables',:status => 'A')
Subcategory.create(:category_id => 3, :name=>'Fruit Juice',:status => 'A')

#products
Product.create(:category_id => 1,:subcategory_id => 1, :name=>'Barley',:status => 'A')
Product.create(:category_id => 1,:subcategory_id => 1, :name=>'Banana',:status => 'A')
Product.create(:category_id => 3, :subcategory_id => 3,:name=>'Black Current',:status => 'A')




