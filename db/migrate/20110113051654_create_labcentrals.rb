#Author: Chaitanya Ram
#Table: 
#==========================================
class CreateLabcentrals < ActiveRecord::Migration
  def self.up
    create_table :labcentrals do |t|
	
	t.string :labid
	t.string :labname
	t.string :housenumber
	t.string :street
	t.string :area
	t.string :landmark
	t.string :city
	t.string :state
	t.string :country
	t.string :pincode
	t.string :land
	t.string :mobile
	t.string :fax
	t.string :email
	t.string :status
	t.string :created_by
	t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :labcentrals
  end
end
