#Author: Chaitanya Ram
#Table: 
#==========================================
class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|

	  t.integer :country_id
	  t.integer :state_id	
	  t.string :name
      t.string :description
      t.string :status
	  t.string :created_by
	  t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
