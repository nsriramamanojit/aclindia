#Author: Chaitanya Ram
#Table: 
#==========================================
class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
 
      t.integer :country_id
	  t.string :name
      t.string :description
      t.string :status
	  t.string :created_by
	  t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
