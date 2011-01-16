#Author: Chaitanya Ram
#Table: 
#==========================================
class CreateLablocationals < ActiveRecord::Migration
  def self.up
    create_table :lablocationals do |t|

	t.integer :labcentral_id
	t.integer :labregional_id 
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
    drop_table :lablocationals
  end
end
