# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

#Delete Existing Data
Labcentral.delete_all
Labregional.delete_all
Lablocational.delete_all
State.delete_all
Country.delete_all
City.delete_all
Labcentral.delete_all
Category.delete_all
Exchange.delete_all
Packing.delete_all
Product.delete_all
Sampleplace.delete_all
SampleUnit.delete_all
Seal.delete_all
Subcategory.delete_all
Testmethod.delete_all
Testrequire.delete_all
Teststandard.delete_all
User.delete_all
Warehouse.delete_all
#End: Delete Tables

#Countries
Country.create(:name => 'INDIA', :description => 'INDIA', :status => 'A')

#states
State.create(:country_id => 1, :name => 'Andhra Pradesh', :description => 'Andhra Pradesh', :status => 'A')
State.create(:country_id => 1, :name => 'Maharashtra', :description => 'Maharashtra', :status => 'A')
State.create(:country_id => 1, :name => 'Gujarat', :description => 'Gujarat', :status => 'A')

#citites





