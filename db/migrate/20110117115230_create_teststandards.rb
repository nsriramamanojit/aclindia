class CreateTeststandards < ActiveRecord::Migration
  def self.up
    create_table :teststandards do |t|

	t.string :name
	t.string :description
	t.string :uploadstatus
	t.string :fileurl
	t.string :status
	t.string :created_by
	t.string :modified_by


      t.timestamps
    end
  end

  def self.down
    drop_table :teststandards
  end
end
