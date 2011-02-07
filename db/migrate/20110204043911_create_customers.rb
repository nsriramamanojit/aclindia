class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
    
      t.string :customerid, :limit=>20
      t.string :customername, :limit=>100
      t.string :customertype
      t.string :customerclass
      t.string :organizationname
      t.string :groupname
      t.string :housenumber
      t.string :street
      t.string :area
      t.string :city
      t.string :state
      t.string :country
      t.string :phone,:limit=>20
      t.string :mobile, :limit=>20
      t.string :email, :limit=>100
      t.string :contactperson
      t.string :pincode, :limit=>10
      t.string :remarks
      
      t.string :created_by
      t.string :modified_by
	
      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
