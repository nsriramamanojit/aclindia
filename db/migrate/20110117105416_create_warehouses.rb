class CreateWarehouses < ActiveRecord::Migration
  def self.up
    create_table :warehouses do |t|

 	t.string :whnumber
	t.string :whnickname
	t.text   :whaddress
	t.string :status
	t.string :created_by
	t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :warehouses
  end
end
