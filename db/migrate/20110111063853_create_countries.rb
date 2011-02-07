class CreateCountries < ActiveRecord::Migration
  def self.up
    create_table :countries do |t|

      t.string :name, :limit=>50
      t.string :description, :limit=>100
      t.string :status, :limit=>15
      
      t.string :created_by
	t.string :modified_by

      t.timestamps
    end
  end

  def self.down
    drop_table :countries
  end
end
